import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:lexiverse/data/model/lesson.model.dart';
import 'package:lexiverse/lesson/lesson_background.dart';
import 'package:lexiverse/lesson/lesson_headline.dart';
import 'package:lexiverse/lesson/lesson_title.dart';
import 'package:lexiverse/lesson/lesson_vocabulary.dart';
import 'package:lexiverse/messages/starter/conversation_starter_panel.dart';
import 'package:lexiverse/notifiers/lessons_notifiers.dart';

class LessonScreen extends ConsumerStatefulWidget {
  final String? heroTag;
  final LessonReview lessonReview;

  const LessonScreen({
    super.key,
    this.heroTag,
    required this.lessonReview,
  });

  @override
  ConsumerState<LessonScreen> createState() => _LessonScreenState();
}

class _LessonScreenState extends ConsumerState<LessonScreen> {
  bool _isFavorite = false;
  bool _isCollapsed = false;

  late ScrollController _scrollController;

  @override
  void initState() {
    super.initState();
    _isFavorite = widget.lessonReview.isFavorite;

    _scrollController = ScrollController();
    _scrollController.addListener(_onScroll);
  }

  @override
  Widget build(BuildContext context) {
    final lesson = widget.lessonReview.lesson;

    return Scaffold(
      body: Scrollbar(
        controller: _scrollController,
        child: CustomScrollView(
          controller: _scrollController,
          slivers: <Widget>[
            SliverAppBar.large(
              expandedHeight: MediaQuery.of(context).size.width,
              flexibleSpace: FlexibleSpaceBar(
                stretchModes: const [
                  StretchMode.zoomBackground,
                  StretchMode.blurBackground,
                ],
                background: LessonBackground(
                  heroTag: widget.heroTag,
                  imageUrl: widget.lessonReview.imageUrl.large,
                ),
              ),
              actions: [
                IconButton(
                  tooltip: _isFavorite
                      ? 'Remove from favorites'
                      : 'Add to favorites',
                  icon: Icon(
                    _isFavorite ? Icons.favorite : Icons.favorite_border,
                    color: _isFavorite ? Colors.red : null,
                  ),
                  onPressed: () {
                    ref
                        .read(lessonsNotifierProvider.notifier)
                        .toggleFavorite(widget.lessonReview.id!);
                    setState(() {
                      _isFavorite = !_isFavorite;
                    });
                  },
                ),
                IconButton(
                  tooltip: 'Delete lesson',
                  icon: const Icon(Icons.delete_outline),
                  onPressed: () => showDialog(
                    context: context,
                    builder: (BuildContext dialogContext) {
                      return AlertDialog(
                        title: const Text('Delete Lesson'),
                        content: const Text(
                          'Are you sure you want to permanently delete this lesson?',
                        ),
                        actions: <Widget>[
                          TextButton(
                            child: const Text('Cancel'),
                            onPressed: () {
                              Navigator.of(dialogContext)
                                  .pop(); // Dismiss the dialog
                            },
                          ),
                          TextButton(
                            child: const Text('Delete'),
                            onPressed: () {
                              Navigator.of(dialogContext)
                                  .pop(); // Dismiss the dialog
                              ref
                                  .read(lessonsNotifierProvider.notifier)
                                  .deleteLessonReview(widget.lessonReview.id!);
                              Navigator.of(context)
                                  .pop(); // Pop the current screen
                            },
                          ),
                        ],
                      );
                    },
                  ),
                ),
              ],
              title: AnimatedOpacity(
                opacity: _isCollapsed ? 1 : 0,
                curve: Curves.easeInOut,
                duration: const Duration(milliseconds: 200),
                child: Text(lesson.title.baseText),
              ),
            ),
            SliverToBoxAdapter(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  LessonTitle(key: _titleKey, title: lesson.title),
                  LessonHeadline(key: _headlineKeys[0], headline: 'Vocabulary'),
                  LessonVocabulary(
                    key: _bodyKeys[0],
                    isLoading: false,
                    vocabulary: lesson.vocabulary,
                  ),
                  LessonHeadline(
                      key: _headlineKeys[1], headline: 'Description'),
                  Column(
                    key: _bodyKeys[1],
                    children: lesson.description
                        .map(
                          (sentence) => ListTile(
                            title: Text(sentence.targetText),
                            subtitle: Text(sentence.baseText),
                          ),
                        )
                        .toList(),
                  ),
                  LessonHeadline(
                      key: _headlineKeys[2], headline: 'Conversations'),
                  Column(
                    key: _bodyKeys[2],
                    children: lesson.conversationStarters
                        .map(
                          (starter) => ConversationStarterPanel(
                            languagePair: widget.lessonReview.languagePair,
                            lessonReviewId: widget.lessonReview.id,
                            conversationStarter: starter,
                            initiallyExpanded: true,
                          ),
                        )
                        .toList(),
                  ),
                  LessonHeadline(key: _headlineKeys[3], headline: 'Grammar'),
                  Column(
                    key: _bodyKeys[3],
                    children: lesson.grammarInsights
                        .map(
                          (tip) => ListTile(
                            title: Text(
                              tip.title,
                              style:
                                  const TextStyle(fontWeight: FontWeight.bold),
                            ),
                            subtitle: Text(tip.explanation),
                          ),
                        )
                        .toList(),
                  ),
                  const LessonHeadline(headline: 'Culture'),
                  ...lesson.cultureInsights.map(
                    (tip) => ListTile(
                      title: Text(
                        tip.title,
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text(tip.explanation),
                    ),
                  ),
                  const SizedBox(height: 16),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: NavigationBar(
        labelBehavior: NavigationDestinationLabelBehavior.alwaysHide,
        selectedIndex: _selectedIndex,
        onDestinationSelected: _scrollToSection,
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.book_outlined),
            label: 'Vocabulary',
          ),
          NavigationDestination(
            icon: Icon(Icons.description_outlined),
            label: 'Description',
          ),
          NavigationDestination(
            icon: Icon(Icons.chat_outlined),
            label: 'Conversations',
          ),
          NavigationDestination(
            icon: Icon(Icons.lightbulb_outline_rounded),
            label: 'Grammar',
          ),
        ],
      ),
    );
  }

  int _selectedIndex = 0;
  bool _isScrolling = false;

  final GlobalKey _titleKey = GlobalKey();
  final List<GlobalKey> _headlineKeys = List.generate(4, (_) => GlobalKey());
  final List<GlobalKey> _bodyKeys = List.generate(4, (_) => GlobalKey());

  void _onScroll() {
    if (!_isScrolling) {
      _updateSelectedIndex();
      _updateCollapsedState();
    }
  }

  void _updateSelectedIndex() {
    final viewportHeight = MediaQuery.of(context).size.height;
    const appBarHeight = kToolbarHeight;
    const bottomNavBarHeight = kBottomNavigationBarHeight;

    List<int> visibleSections = [];

    for (int i = 0; i < _bodyKeys.length; i++) {
      final headlineContext = _headlineKeys[i].currentContext;
      final bodyContext = _bodyKeys[i].currentContext;

      if (headlineContext != null && bodyContext != null) {
        final headlineBox = headlineContext.findRenderObject() as RenderBox;
        final bodyBox = bodyContext.findRenderObject() as RenderBox;

        final headlineOffset = headlineBox.localToGlobal(Offset.zero);
        final bodyOffset = bodyBox.localToGlobal(Offset.zero);

        final headlineTop = headlineOffset.dy;
        final bodyBottom = bodyOffset.dy + bodyBox.size.height;

        if (headlineTop < viewportHeight - bottomNavBarHeight &&
            bodyBottom > appBarHeight) {
          visibleSections.add(i);
        }
      }
    }

    if (visibleSections.isNotEmpty) {
      final hierarchyOrder = [0, 1, 2, 3];
      for (int index in hierarchyOrder) {
        if (visibleSections.contains(index)) {
          setState(() {
            _selectedIndex = index;
          });
          return;
        }
      }
    }
  }

  void _updateCollapsedState() {
    final lessonTitleContext = _titleKey.currentContext;
    if (lessonTitleContext != null) {
      final lessonTitleBox = lessonTitleContext.findRenderObject() as RenderBox;
      final lessonTitleOffset = lessonTitleBox.localToGlobal(Offset.zero);
      final lessonTitleTop = lessonTitleOffset.dy;

      setState(() {
        _isCollapsed = lessonTitleTop < kToolbarHeight;
      });
    }
  }

  void _scrollToSection(int index) {
    setState(() {
      _selectedIndex = index;
      _isScrolling = true;
    });

    final context = _headlineKeys[index].currentContext;
    if (context != null) {
      Scrollable.ensureVisible(
        context,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeOut,
      ).then((_) => setState(() => _isScrolling = false));
    }
  }

  @override
  void dispose() {
    _scrollController.removeListener(_onScroll);
    _scrollController.dispose();
    super.dispose();
  }
}
