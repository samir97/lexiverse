import 'package:flutter/material.dart';
import 'package:lexiverse/data/model/lesson.model.dart';

class VocabularyMatchingGame extends StatefulWidget {
  final List<TranslatedText> words;

  const VocabularyMatchingGame({super.key, required this.words});

  @override
  State<VocabularyMatchingGame> createState() => _VocabularyMatchingGameState();
}

class _VocabularyMatchingGameState extends State<VocabularyMatchingGame> {
  List<String> baseWords = [];
  List<String> targetWords = [];
  List<bool> baseSelected = [];
  List<bool> targetSelected = [];
  List<bool> baseMatched = [];
  List<bool> targetMatched = [];
  String? firstSelected;
  int? firstSelectedIndex;
  bool isBase = false;
  int hearts = 3;
  double progress = 0.0;

  @override
  void initState() {
    super.initState();
    initializeGame();
  }

  void initializeGame() {
    baseWords = widget.words.map((word) => word.baseText).toList()..shuffle();
    targetWords = widget.words.map((word) => word.targetText).toList()
      ..shuffle();
    baseSelected = List.generate(widget.words.length, (_) => false);
    targetSelected = List.generate(widget.words.length, (_) => false);
    baseMatched = List.generate(widget.words.length, (_) => false);
    targetMatched = List.generate(widget.words.length, (_) => false);
    firstSelected = null;
    firstSelectedIndex = null;
    isBase = false;
    hearts = 3;
    progress = 0.0;
  }

  void handleWordTap(String word, bool isBaseWord, int index) {
    if (firstSelected == null) {
      setState(() {
        firstSelected = word;
        firstSelectedIndex = index;
        isBase = isBaseWord;
        if (isBaseWord) {
          baseSelected[index] = true;
        } else {
          targetSelected[index] = true;
        }
      });
    } else {
      checkMatch(word, isBaseWord, index);
    }
  }

  void checkMatch(String secondSelected, bool isSecondBase, int secondIndex) {
    if (isBase == isSecondBase) {
      // Deselect if tapping on the same side
      setState(() {
        if (isBase) {
          baseSelected[firstSelectedIndex!] = false;
        } else {
          targetSelected[firstSelectedIndex!] = false;
        }
        firstSelected = secondSelected;
        firstSelectedIndex = secondIndex;
        if (isSecondBase) {
          baseSelected[secondIndex] = true;
        } else {
          targetSelected[secondIndex] = true;
        }
      });
      return;
    }

    final matchIndex = widget.words.indexWhere((item) =>
        (isBase &&
            item.baseText == firstSelected &&
            item.targetText == secondSelected) ||
        (!isBase &&
            item.targetText == firstSelected &&
            item.baseText == secondSelected));

    setState(() {
      if (matchIndex != -1) {
        // Correct match
        baseMatched[isBase ? firstSelectedIndex! : secondIndex] = true;
        targetMatched[isBase ? secondIndex : firstSelectedIndex!] = true;
        progress += 1 / widget.words.length;
      } else {
        // Incorrect match
        hearts--;
      }
      baseSelected[isBase ? firstSelectedIndex! : secondIndex] = false;
      targetSelected[isBase ? secondIndex : firstSelectedIndex!] = false;
      firstSelected = null;
      firstSelectedIndex = null;
    });

    if (hearts == 0 || progress >= 1.0) {
      showGameOverDialog();
    }
  }

  void showGameOverDialog() {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(hearts == 0 ? 'Game Over' : 'Congratulations!'),
          content: Text(hearts == 0
              ? 'You ran out of hearts.'
              : 'You matched all the words correctly!'),
          actions: <Widget>[
            TextButton(
              child: const Text('Go back'),
              onPressed: () {
                Navigator.of(context).pop();
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Vocabulary Matching'),
      ),
      body: Column(
        children: [
          LinearProgressIndicator(
            value: progress,
            valueColor: const AlwaysStoppedAnimation<Color>(Colors.green),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: List.generate(
                  3,
                  (index) => Icon(
                        index < hearts ? Icons.favorite : Icons.favorite_border,
                        color: Colors.red,
                      )),
            ),
          ),
          Expanded(
            child: Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: List.generate(
                          baseWords.length,
                          (index) => Padding(
                            padding: const EdgeInsets.symmetric(vertical: 12.0),
                            child: ElevatedButton(
                              onPressed: baseMatched[index]
                                  ? null
                                  : () => handleWordTap(
                                      baseWords[index], true, index),
                              style: ElevatedButton.styleFrom(
                                backgroundColor: baseSelected[index]
                                    ? Colors.green[900]
                                    : baseMatched[index]
                                        ? Colors.grey[300]
                                        : null,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8.0),
                                  side: BorderSide(color: Colors.grey[300]!),
                                ),
                              ),
                              child: Text(baseWords[index],
                                  style: TextStyle(
                                      color: baseMatched[index]
                                          ? Colors.grey[600]
                                          : Colors.white)),
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 16.0),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: List.generate(
                          targetWords.length,
                          (index) => Padding(
                            padding: const EdgeInsets.symmetric(vertical: 12.0),
                            child: ElevatedButton(
                              onPressed: targetMatched[index]
                                  ? null
                                  : () => handleWordTap(
                                      targetWords[index], false, index),
                              style: ElevatedButton.styleFrom(
                                backgroundColor: targetSelected[index]
                                    ? Colors.green[900]
                                    : targetMatched[index]
                                        ? Colors.grey[300]
                                        : null,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8.0),
                                  side: BorderSide(color: Colors.grey[300]!),
                                ),
                              ),
                              child: Text(targetWords[index],
                                  style: TextStyle(
                                      color: targetMatched[index]
                                          ? Colors.grey[600]
                                          : Colors.white)),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: SafeArea(
        top: false,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: ElevatedButton(
            onPressed: () {
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    title: const Text('Restart Game'),
                    content: const Text(
                        'Are you sure you want to restart the game?'),
                    actions: <Widget>[
                      TextButton(
                        child: const Text('Cancel'),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                      ),
                      TextButton(
                        child: const Text('Restart'),
                        onPressed: () {
                          Navigator.of(context).pop();
                          setState(() {
                            initializeGame();
                          });
                        },
                      ),
                    ],
                  );
                },
              );
            },
            child: const Text('Restart Game'),
          ),
        ),
      ),
    );
  }
}
