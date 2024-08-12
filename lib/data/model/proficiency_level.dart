enum ProficiencyLevel { a1, a2, b1, b2, c1, c2 }

extension ProficiencyLevelExtension on ProficiencyLevel {
  String get description {
    switch (this) {
      case ProficiencyLevel.a1:
        return 'Beginner';
      case ProficiencyLevel.a2:
        return 'Elementary';
      case ProficiencyLevel.b1:
        return 'Intermediate';
      case ProficiencyLevel.b2:
        return 'Upper Intermediate';
      case ProficiencyLevel.c1:
        return 'Advanced';
      case ProficiencyLevel.c2:
        return 'Proficient';
    }
  }

  String get emoji {
    switch (this) {
      case ProficiencyLevel.a1:
        return '🌰';
      case ProficiencyLevel.a2:
        return '🌱';
      case ProficiencyLevel.b1:
        return '🌿';
      case ProficiencyLevel.b2:
        return '🪴';
      case ProficiencyLevel.c1:
        return '🌳';
      case ProficiencyLevel.c2:
        return '🏆';
    }
  }

  String get explanation {
    switch (this) {
      case ProficiencyLevel.a1:
        return 'Can understand and use familiar everyday expressions and very basic phrases.';
      case ProficiencyLevel.a2:
        return 'Can communicate in simple and routine tasks requiring a simple and direct exchange of information.';
      case ProficiencyLevel.b1:
        return 'Can deal with most situations likely to arise while travelling in an area where the language is spoken.';
      case ProficiencyLevel.b2:
        return 'Can interact with a degree of fluency and spontaneity that makes regular interaction with native speakers quite possible.';
      case ProficiencyLevel.c1:
        return 'Can express ideas fluently and spontaneously without much obvious searching for expressions.';
      case ProficiencyLevel.c2:
        return 'Can understand with ease virtually everything heard or read.';
    }
  }
}
