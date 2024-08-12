import 'package:lexiverse/data/model/language.dart';
import 'package:lexiverse/data/model/lesson.model.dart';
import 'package:lexiverse/data/model/proficiency_level.dart';

const mockLesson = Lesson(
  title: TranslatedText(
    baseText: 'Rustic Party with Live Music',
    targetText: 'Festa rustica con musica dal vivo',
  ),
  vocabulary: [
    TranslatedText(
      baseText: 'Party',
      targetText: 'Festa',
    ),
    TranslatedText(
      baseText: 'Atmosphere',
      targetText: 'Atmosfera',
    ),
    TranslatedText(
      baseText: 'Stage',
      targetText: 'Palco',
    ),
    TranslatedText(
      baseText: 'Live music',
      targetText: 'Musica dal vivo',
    ),
    TranslatedText(
      baseText: 'Flags',
      targetText: 'Bandierine',
    ),
    TranslatedText(
      baseText: 'Cozy',
      targetText: 'Accogliente',
    ),
  ],
  description: [
    TranslatedText(
      baseText: "There are many people talking and having fun.",
      targetText: "Ci sono molte persone che parlano e si divertono.",
    ),
    TranslatedText(
      baseText:
          "The decorations are simple, with orange flags hanging above people's heads.",
      targetText:
          "Le decorazioni sono semplici, con bandierine arancioni appese sopra le teste delle persone.",
    ),
    TranslatedText(
      baseText: "The lights are warm and create a cozy atmosphere.",
      targetText: "Le luci sono calde e creano un'atmosfera accogliente.",
    ),
    TranslatedText(
      baseText:
          "In the background, there is a stage with a sign that says \"Live Music\".",
      targetText:
          "Sullo sfondo, c'è un palco con un'insegna che dice \"Live Music\".",
    ),
    TranslatedText(
      baseText:
          "People are wearing casual clothes and seem to be enjoying the moment.",
      targetText: "La gente indossa abiti casual e sembra godersi il momento.",
    ),
  ],
  conversationStarters: [
    ConversationStarter(
      topic: TranslatedText(
        baseText: "Anna and Marco are enjoying a party.",
        targetText: "Anna e Marco si godono una festa.",
      ),
      messages: [
        Message(
          speaker: "Anna",
          message: TranslatedText(
            baseText: "Hi Marco! What a nice party, right?",
            targetText: "Ciao Marco! Che bella festa, vero?",
          ),
        ),
        Message(
          speaker: "Marco",
          message: TranslatedText(
            baseText: "Yes, really. I like the atmosphere here.",
            targetText: "Sì, davvero. Mi piace l'atmosfera qui.",
          ),
        ),
        Message(
          speaker: "Anna",
          message: TranslatedText(
            baseText:
                "Me too. Did you see the stage? There will be live music tonight!",
            targetText:
                "Anche a me. Hai visto il palco? Stasera ci sarà musica dal vivo!",
          ),
        ),
        Message(
          speaker: "Marco",
          message: TranslatedText(
            baseText: "I can't wait. I love live music.",
            targetText: "Non vedo l'ora. Adoro la musica dal vivo.",
          ),
        ),
      ],
    ),
    ConversationStarter(
      topic: TranslatedText(
        baseText: "Luca and Maria enjoy the festive and cozy decorations.",
        targetText:
            "Luca e Maria apprezzano le decorazioni festose e accoglienti.",
      ),
      messages: [
        Message(
          speaker: "Luca",
          message: TranslatedText(
            baseText: "Do you like the decorations, Maria?",
            targetText: "Ti piacciono le decorazioni, Maria?",
          ),
        ),
        Message(
          speaker: "Maria",
          message: TranslatedText(
            baseText: "Yes, they are very nice. I love the orange flags.",
            targetText: "Sì, sono molto carine. Adoro le bandierine arancioni.",
          ),
        ),
        Message(
          speaker: "Luca",
          message: TranslatedText(
            baseText: "Me too. They make the place more festive.",
            targetText: "Anche a me. Rendono l'ambiente più festoso.",
          ),
        ),
        Message(
          speaker: "Maria",
          message: TranslatedText(
            baseText:
                "Exactly. And the warm lights are perfect for creating a cozy atmosphere.",
            targetText:
                "Esattamente. E le luci calde sono perfette per creare un'atmosfera accogliente.",
          ),
        ),
      ],
    ),
    ConversationStarter(
      topic: TranslatedText(
        baseText: "Giulia directs Paolo to a buffet near the stage.",
        targetText: "Giulia indica a Paolo un buffet vicino al palco.",
      ),
      messages: [
        Message(
          speaker: "Giulia",
          message: TranslatedText(
            baseText: "Have you eaten anything yet, Paolo?",
            targetText: "Hai già mangiato qualcosa, Paolo?",
          ),
        ),
        Message(
          speaker: "Paolo",
          message: TranslatedText(
            baseText: "No, not yet. Do you know where I can find some food?",
            targetText: "No, non ancora. Sai dove posso trovare del cibo?",
          ),
        ),
        Message(
          speaker: "Giulia",
          message: TranslatedText(
            baseText: "I think there is a buffet near the stage.",
            targetText: "Credo che ci sia un buffet vicino al palco.",
          ),
        ),
        Message(
          speaker: "Paolo",
          message: TranslatedText(
            baseText: "Perfect, let's go check it out.",
            targetText: "Perfetto, andiamo a vedere.",
          ),
        ),
      ],
    ),
  ],
  grammarInsights: [
    Insight(
      type: InsightType.grammar,
      title: 'Placement of Adjectives',
      explanation:
          'Adjectives in Italian typically follow the nouns they describe, which is opposite to English. For example, in English we say "red wine," but in Italian, it\'s "vino rosso." However, some adjectives, which often describe beauty, age, goodness, or size (BAGS), might precede the noun to emphasize these qualities, such as "bella festa" (beautiful party).',
    ),
    Insight(
      type: InsightType.grammar,
      title: 'Use of Definite Articles',
      explanation:
          'Italian uses definite articles (the) more frequently than English. These articles must agree in gender and number with the nouns they modify. For example, "the stage" is "il palco" (masculine singular), "the decorations" are "le decorazioni" (feminine plural). Even in cases where English omits the article, such as talking about general concepts (like love or friendship), Italian still often requires it.',
    ),
  ],
  cultureInsights: [
    Insight(
      type: InsightType.culture,
      title: 'Living the Sweet Life',
      explanation:
          'Italians embrace the "la dolce vita" lifestyle, celebrating life with food, music, and friends at gatherings. Expect lively conversations, spontaneous dancing, and delicious local cuisine, all set to a soundtrack of traditional and modern tunes.',
    ),
  ],
);

final mockLessons = [
  LessonReview(
    id: '1',
    lesson: mockLesson,
    imageUrl: const ImageUrl(
        small: 'assets/images/party.jpg',
        medium: 'assets/images/party.jpg',
        large: 'assets/images/party.jpg'),
    languagePair: const LanguagePair(
        baseLanguage: Language.en,
        targetLanguage: Language.it,
        proficiencyLevel: ProficiencyLevel.a1),
    nextReviewDate: DateTime(2022, 1, 1),
    repetitionCount: 1,
    easeFactor: 2.5,
    createdAt: DateTime.now(),
  ),
  LessonReview(
    id: '2',
    lesson: mockLesson,
    imageUrl: const ImageUrl(
        small: 'assets/images/scones.jpg',
        medium: 'assets/images/scones.jpg',
        large: 'assets/images/scones.jpg'),
    languagePair: const LanguagePair(
        baseLanguage: Language.en,
        targetLanguage: Language.it,
        proficiencyLevel: ProficiencyLevel.a1),
    nextReviewDate: DateTime(2022, 1, 1),
    repetitionCount: 1,
    easeFactor: 2.5,
    createdAt: DateTime.now(),
  ),
  LessonReview(
    id: '3',
    lesson: mockLesson,
    imageUrl: const ImageUrl(
        small: 'assets/images/cat.jpg',
        medium: 'assets/images/cat.jpg',
        large: 'assets/images/cat.jpg'),
    languagePair: const LanguagePair(
        baseLanguage: Language.en,
        targetLanguage: Language.it,
        proficiencyLevel: ProficiencyLevel.a1),
    nextReviewDate: DateTime(2022, 1, 1),
    repetitionCount: 1,
    easeFactor: 2.5,
    createdAt: DateTime.now(),
  ),
];

final mockVocab = [
  VocabularyReview(
    id: '1',
    lessonReviewId: '1',
    word: const TranslatedText(
      baseText: 'Party',
      targetText: 'Festa',
    ),
    languagePair: const LanguagePair(
      baseLanguage: Language.en,
      targetLanguage: Language.it,
      proficiencyLevel: ProficiencyLevel.a1,
    ),
    nextReviewDate: DateTime(2022, 1, 1),
    repetitionCount: 1,
    easeFactor: 2.5,
    createdAt: DateTime.now(),
  ),
  VocabularyReview(
    id: '2',
    lessonReviewId: '1',
    word: const TranslatedText(
      baseText: 'Atmosphere',
      targetText: 'Atmosfera',
    ),
    languagePair: const LanguagePair(
      baseLanguage: Language.en,
      targetLanguage: Language.it,
      proficiencyLevel: ProficiencyLevel.a1,
    ),
    nextReviewDate: DateTime(2022, 1, 2),
    repetitionCount: 1,
    easeFactor: 2.5,
    createdAt: DateTime.now(),
  ),
  VocabularyReview(
    id: '3',
    lessonReviewId: '1',
    word: const TranslatedText(
      baseText: 'Stage',
      targetText: 'Palco',
    ),
    languagePair: const LanguagePair(
      baseLanguage: Language.en,
      targetLanguage: Language.it,
      proficiencyLevel: ProficiencyLevel.a1,
    ),
    nextReviewDate: DateTime(2022, 1, 3),
    repetitionCount: 1,
    easeFactor: 2.5,
    createdAt: DateTime.now(),
  ),
  VocabularyReview(
    id: '4',
    lessonReviewId: '1',
    word: const TranslatedText(
      baseText: 'Live music',
      targetText: 'Musica dal vivo',
    ),
    languagePair: const LanguagePair(
      baseLanguage: Language.en,
      targetLanguage: Language.it,
      proficiencyLevel: ProficiencyLevel.a1,
    ),
    nextReviewDate: DateTime(2022, 1, 4),
    repetitionCount: 1,
    easeFactor: 2.5,
    createdAt: DateTime.now(),
  ),
  VocabularyReview(
    id: '5',
    lessonReviewId: '1',
    word: const TranslatedText(
      baseText: 'Flags',
      targetText: 'Bandierine',
    ),
    languagePair: const LanguagePair(
      baseLanguage: Language.en,
      targetLanguage: Language.it,
      proficiencyLevel: ProficiencyLevel.a1,
    ),
    nextReviewDate: DateTime(2022, 1, 5),
    repetitionCount: 1,
    easeFactor: 2.5,
    createdAt: DateTime.now(),
  ),
  VocabularyReview(
    id: '6',
    lessonReviewId: '1',
    word: const TranslatedText(
      baseText: 'Cozy',
      targetText: 'Accogliente',
    ),
    languagePair: const LanguagePair(
      baseLanguage: Language.en,
      targetLanguage: Language.it,
      proficiencyLevel: ProficiencyLevel.a1,
    ),
    nextReviewDate: DateTime(2022, 1, 6),
    repetitionCount: 1,
    easeFactor: 2.5,
    createdAt: DateTime.now(),
  ),
];

final mockDescriptions = [
  DescriptionReview(
    lessonReviewId: '1',
    description: const TranslatedText(
      baseText: "There are many people talking and having fun.",
      targetText: "Ci sono molte persone che parlano e si divertono.",
    ),
    languagePair: const LanguagePair(
      baseLanguage: Language.en,
      targetLanguage: Language.it,
      proficiencyLevel: ProficiencyLevel.a1,
    ),
    nextReviewDate: DateTime(2022, 1, 1),
    repetitionCount: 1,
    easeFactor: 2.5,
    createdAt: DateTime.now(),
  ),
  DescriptionReview(
    lessonReviewId: '1',
    description: const TranslatedText(
      baseText:
          "The decorations are simple, with orange flags hanging above people's heads.",
      targetText:
          "Le decorazioni sono semplici, con bandierine arancioni appese sopra le teste delle persone.",
    ),
    languagePair: const LanguagePair(
      baseLanguage: Language.en,
      targetLanguage: Language.it,
      proficiencyLevel: ProficiencyLevel.a1,
    ),
    nextReviewDate: DateTime(2022, 1, 2),
    repetitionCount: 1,
    easeFactor: 2.5,
    createdAt: DateTime.now(),
  ),
  DescriptionReview(
    lessonReviewId: '1',
    description: const TranslatedText(
      baseText: "The lights are warm and create a cozy atmosphere.",
      targetText: "Le luci sono calde e creano un'atmosfera accogliente.",
    ),
    languagePair: const LanguagePair(
      baseLanguage: Language.en,
      targetLanguage: Language.it,
      proficiencyLevel: ProficiencyLevel.a1,
    ),
    nextReviewDate: DateTime(2022, 1, 3),
    repetitionCount: 1,
    easeFactor: 2.5,
    createdAt: DateTime.now(),
  ),
  DescriptionReview(
    lessonReviewId: '1',
    description: const TranslatedText(
      baseText:
          "In the background, there is a stage with a sign that says \"Live Music\".",
      targetText:
          "Sullo sfondo, c'è un palco con un'insegna che dice \"Live Music\".",
    ),
    languagePair: const LanguagePair(
      baseLanguage: Language.en,
      targetLanguage: Language.it,
      proficiencyLevel: ProficiencyLevel.a1,
    ),
    nextReviewDate: DateTime(2022, 1, 4),
    repetitionCount: 1,
    easeFactor: 2.5,
    createdAt: DateTime.now(),
  ),
  DescriptionReview(
    lessonReviewId: '1',
    description: const TranslatedText(
      baseText:
          "People are wearing casual clothes and seem to be enjoying the moment.",
      targetText: "La gente indossa abiti casual e sembra godersi il momento.",
    ),
    languagePair: const LanguagePair(
      baseLanguage: Language.en,
      targetLanguage: Language.it,
      proficiencyLevel: ProficiencyLevel.a1,
    ),
    nextReviewDate: DateTime(2022, 1, 5),
    repetitionCount: 1,
    easeFactor: 2.5,
    createdAt: DateTime.now(),
  ),
];

final mockConversationStarters = [
  ConversationStarterReview(
    id: '1',
    lessonReviewId: '1',
    conversationStarter: const ConversationStarter(
      topic: TranslatedText(
        baseText: "Anna and Marco are enjoying a party.",
        targetText: "Anna e Marco si godono una festa.",
      ),
      messages: [
        Message(
          speaker: "Anna",
          message: TranslatedText(
            baseText: "Hi Marco! What a nice party, right?",
            targetText: "Ciao Marco! Che bella festa, vero?",
          ),
        ),
        Message(
          speaker: "Marco",
          message: TranslatedText(
            baseText: "Yes, really. I like the atmosphere here.",
            targetText: "Sì, davvero. Mi piace l'atmosfera qui.",
          ),
        ),
        Message(
          speaker: "Anna",
          message: TranslatedText(
            baseText:
                "Me too. Did you see the stage? There will be live music tonight!",
            targetText:
                "Anche a me. Hai visto il palco? Stasera ci sarà musica dal vivo!",
          ),
        ),
        Message(
          speaker: "Marco",
          message: TranslatedText(
            baseText: "I can't wait. I love live music.",
            targetText: "Non vedo l'ora. Adoro la musica dal vivo.",
          ),
        ),
      ],
    ),
    languagePair: const LanguagePair(
      baseLanguage: Language.en,
      targetLanguage: Language.it,
      proficiencyLevel: ProficiencyLevel.a1,
    ),
    nextReviewDate: DateTime(2022, 1, 1),
    repetitionCount: 1,
    easeFactor: 2.5,
    createdAt: DateTime.now(),
  ),
  ConversationStarterReview(
    id: '2',
    lessonReviewId: '1',
    conversationStarter: const ConversationStarter(
      topic: TranslatedText(
        baseText: "Luca and Maria enjoy the festive and cozy decorations.",
        targetText:
            "Luca e Maria apprezzano le decorazioni festose e accoglienti.",
      ),
      messages: [
        Message(
          speaker: "Luca",
          message: TranslatedText(
            baseText: "Do you like the decorations, Maria?",
            targetText: "Ti piacciono le decorazioni, Maria?",
          ),
        ),
        Message(
          speaker: "Maria",
          message: TranslatedText(
            baseText: "Yes, they are very nice. I love the orange flags.",
            targetText: "Sì, sono molto carine. Adoro le bandierine arancioni.",
          ),
        ),
        Message(
          speaker: "Luca",
          message: TranslatedText(
            baseText: "Me too. They make the place more festive.",
            targetText: "Anche a me. Rendono l'ambiente più festoso.",
          ),
        ),
        Message(
          speaker: "Maria",
          message: TranslatedText(
            baseText:
                "Exactly. And the warm lights are perfect for creating a cozy atmosphere.",
            targetText:
                "Esattamente. E le luci calde sono perfette per creare un'atmosfera accogliente.",
          ),
        ),
      ],
    ),
    languagePair: const LanguagePair(
      baseLanguage: Language.en,
      targetLanguage: Language.it,
      proficiencyLevel: ProficiencyLevel.a1,
    ),
    nextReviewDate: DateTime(2022, 1, 2),
    repetitionCount: 1,
    easeFactor: 2.5,
    createdAt: DateTime.now(),
  ),
  ConversationStarterReview(
    id: '3',
    lessonReviewId: '1',
    conversationStarter: const ConversationStarter(
      topic: TranslatedText(
        baseText: "Giulia directs Paolo to a buffet near the stage.",
        targetText: "Giulia indica a Paolo un buffet vicino al palco.",
      ),
      messages: [
        Message(
          speaker: "Giulia",
          message: TranslatedText(
            baseText: "Have you eaten anything yet, Paolo?",
            targetText: "Hai già mangiato qualcosa, Paolo?",
          ),
        ),
        Message(
          speaker: "Paolo",
          message: TranslatedText(
            baseText: "No, not yet. Do you know where I can find some food?",
            targetText: "No, non ancora. Sai dove posso trovare del cibo?",
          ),
        ),
        Message(
          speaker: "Giulia",
          message: TranslatedText(
            baseText: "I think there is a buffet near the stage.",
            targetText: "Credo che ci sia un buffet vicino al palco.",
          ),
        ),
        Message(
          speaker: "Paolo",
          message: TranslatedText(
            baseText: "Perfect, let's go check it out.",
            targetText: "Perfetto, andiamo a vedere.",
          ),
        ),
      ],
    ),
    languagePair: const LanguagePair(
      baseLanguage: Language.en,
      targetLanguage: Language.it,
      proficiencyLevel: ProficiencyLevel.a1,
    ),
    nextReviewDate: DateTime(2022, 1, 3),
    repetitionCount: 1,
    easeFactor: 2.5,
    createdAt: DateTime.now(),
  ),
];

final mockInsights = [
  InsightReview(
    id: '1',
    lessonReviewId: '1',
    insight: const Insight(
      type: InsightType.grammar,
      title: 'Placement of Adjectives',
      explanation:
          'Adjectives in Italian typically follow the nouns they describe, which is opposite to English. For example, in English we say "red wine," but in Italian, it\'s "vino rosso." However, some adjectives, which often describe beauty, age, goodness, or size (BAGS), might precede the noun to emphasize these qualities, such as "bella festa" (beautiful party).',
    ),
    languagePair: const LanguagePair(
      baseLanguage: Language.en,
      targetLanguage: Language.it,
      proficiencyLevel: ProficiencyLevel.a1,
    ),
    nextReviewDate: DateTime(2022, 1, 1),
    repetitionCount: 1,
    easeFactor: 2.5,
    createdAt: DateTime.now(),
  ),
  InsightReview(
    id: '2',
    lessonReviewId: '1',
    insight: const Insight(
      type: InsightType.grammar,
      title: 'Use of Definite Articles',
      explanation:
          'Italian uses definite articles (the) more frequently than English. These articles must agree in gender and number with the nouns they modify. For example, "the stage" is "il palco" (masculine singular), "the decorations" are "le decorazioni" (feminine plural). Even in cases where English omits the article, such as talking about general concepts (like love or friendship), Italian still often requires it.',
    ),
    languagePair: const LanguagePair(
      baseLanguage: Language.en,
      targetLanguage: Language.it,
      proficiencyLevel: ProficiencyLevel.a1,
    ),
    nextReviewDate: DateTime(2022, 1, 2),
    repetitionCount: 1,
    easeFactor: 2.5,
    createdAt: DateTime.now(),
  ),
  InsightReview(
    id: '1',
    lessonReviewId: '1',
    insight: const Insight(
      type: InsightType.culture,
      title: 'Living the Sweet Life',
      explanation:
          'Italians embrace the "la dolce vita" lifestyle, celebrating life with food, music, and friends at gatherings. Expect lively conversations, spontaneous dancing, and delicious local cuisine, all set to a soundtrack of traditional and modern tunes.',
    ),
    languagePair: const LanguagePair(
      baseLanguage: Language.en,
      targetLanguage: Language.it,
      proficiencyLevel: ProficiencyLevel.a1,
    ),
    nextReviewDate: DateTime(2022, 1, 1),
    repetitionCount: 1,
    easeFactor: 2.5,
    createdAt: DateTime.now(),
  ),
];

final mockConversation = Conversation(
  id: '3',
  lessonReviewId: '1',
  topic: const TranslatedText(
    baseText: "Giulia directs Paolo to a buffet near the stage.",
    targetText: "Giulia indica a Paolo un buffet vicino al palco.",
  ),
  messages: [
    const Message(
      speaker: "Giulia",
      message: TranslatedText(
        baseText: "Have you eaten anything yet, Paolo?",
        targetText: "Hai già mangiato qualcosa, Paolo?",
      ),
    ),
    const Message(
      speaker: "Paolo",
      message: TranslatedText(
        baseText: "No, not yet. Do you know where I can find some food?",
        targetText: "No, non ancora. Sai dove posso trovare del cibo?",
      ),
    ),
    const Message(
      speaker: "Giulia",
      message: TranslatedText(
        baseText: "I think there is a buffet near the stage.",
        targetText: "Credo che ci sia un buffet vicino al palco.",
      ),
    ),
    const Message(
      speaker: "Paolo",
      message: TranslatedText(
        baseText: "Perfect, let's go check it out.",
        targetText: "Perfetto, andiamo a vedere.",
      ),
    ),
  ],
  languagePair: const LanguagePair(
    baseLanguage: Language.en,
    targetLanguage: Language.it,
    proficiencyLevel: ProficiencyLevel.a1,
  ),
  lastMessagedAt: DateTime.now(),
  createdAt: DateTime.now().subtract(const Duration(days: 1)),
);
