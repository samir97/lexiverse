enum LearningReason {
  general,
  travel,
  business,
  love,
  culture,
  academics,
  career,
  entertainment,
  heritage,
  humanitarian,
  relocation
}

extension LearningReasonExtension on LearningReason {
  String get description {
    switch (this) {
      case LearningReason.general:
        return 'General';
      case LearningReason.travel:
        return 'Travel';
      case LearningReason.business:
        return 'Business';
      case LearningReason.love:
        return 'Love';
      case LearningReason.culture:
        return 'Culture';
      case LearningReason.academics:
        return 'Academics';
      case LearningReason.career:
        return 'Career';
      case LearningReason.entertainment:
        return 'Entertainment';
      case LearningReason.heritage:
        return 'Heritage';
      case LearningReason.humanitarian:
        return 'Humanitarian';
      case LearningReason.relocation:
        return 'Relocation';
    }
  }

  String get emoji {
    switch (this) {
      case LearningReason.general:
        return '🌐';
      case LearningReason.travel:
        return '✈️';
      case LearningReason.business:
        return '💼';
      case LearningReason.love:
        return '❤️';
      case LearningReason.culture:
        return '🌍';
      case LearningReason.academics:
        return '📚';
      case LearningReason.career:
        return '🚀';
      case LearningReason.entertainment:
        return '🎬';
      case LearningReason.heritage:
        return '🌳';
      case LearningReason.humanitarian:
        return '🤝';
      case LearningReason.relocation:
        return '🏡';
    }
  }

  String get motivation {
    switch (this) {
      case LearningReason.general:
        return 'Broaden your perspective by mastering a new language, opening doors to diverse thoughts and ideas.';
      case LearningReason.travel:
        return 'Navigate foreign cities with ease, order local delicacies, and forge meaningful connections with people you meet on your journeys.';
      case LearningReason.business:
        return 'Negotiate deals, present to international clients, and expand your professional network across borders.';
      case LearningReason.love:
        return 'Share inside jokes, express deep emotions, and build a stronger bond with your partner and their family in their native tongue.';
      case LearningReason.culture:
        return 'Grasp the nuances of idioms, appreciate untranslatable concepts, and gain authentic insights into different ways of life.';
      case LearningReason.academics:
        return 'Study abroad, access research in multiple languages, and engage with international scholars in their native language.';
      case LearningReason.career:
        return 'Boost your resume, stand out in job interviews, and advance your career by working with global teams.';
      case LearningReason.entertainment:
        return 'Enjoy films without subtitles, sing along to foreign songs, and discover new favorite authors in their original, unfiltered voice.';
      case LearningReason.heritage:
        return 'Reconnect with your roots, preserve your family history, and pass down your language and culture to future generations.';
      case LearningReason.humanitarian:
        return 'Provide vital assistance in crisis situations, bridge communication gaps in refugee camps, and empower communities through direct interaction.';
      case LearningReason.relocation:
        return 'Settle into a new country, make friends with locals, and feel at home by speaking the language of your adopted community.';
    }
  }

  String get learningReasonInstruction {
    switch (this) {
      case LearningReason.general:
        return "";
      case LearningReason.travel:
        return "Focus on travel-related vocabulary, phrases, and cultural insights that would be useful for a tourist or traveler.";
      case LearningReason.business:
        return "Emphasize business-related language, formal communication, and cultural insights relevant to professional settings.";
      case LearningReason.love:
        return "Include romantic vocabulary, phrases for expressing emotions, and cultural insights about relationships and dating in the target culture.";
      case LearningReason.culture:
        return "Highlight cultural aspects, traditions, and customs related to the image. Provide deeper cultural insights and explanations.";
      case LearningReason.academics:
        return "Focus on academic vocabulary, formal language structures, and content related to educational settings or scholarly topics.";
      case LearningReason.career:
        return "Emphasize professional development vocabulary, job-related phrases, and insights about work culture in the target language environment.";
      case LearningReason.entertainment:
        return "Include vocabulary and phrases related to leisure activities, pop culture, and entertainment. Provide cultural insights about popular pastimes.";
      case LearningReason.heritage:
        return "Focus on traditional vocabulary, historical references, and cultural insights that connect to the heritage aspects of the target language and culture.";
      case LearningReason.humanitarian:
        return "Emphasize vocabulary related to social issues, volunteering, and community work. Include cultural insights about social norms and community support.";
      case LearningReason.relocation:
        return "Focus on practical vocabulary for daily life, local customs, and cultural insights that would be useful for someone moving to a country where the target language is spoken.";
      default:
        return "";
    }
  }
}
