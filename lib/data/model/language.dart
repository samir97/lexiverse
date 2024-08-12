enum Language {
  en,
  es,
  zh,
  hi,
  ar,
  bn,
  pt,
  ru,
  ja,
  de,
  fr,
  tr,
  ko,
  it,
  pl,
  uk,
  nl,
  fa,
  vi,
  ta,
  ur,
  sv,
  ro,
  el,
  cs,
  hu,
  fi,
  id,
  th,
  bg,
  da,
  he,
  sk,
  no,
  hr,
  lt,
  sl,
  et,
  lv,
  sw
}

extension LanguageExtension on Language {
  String get displayName {
    switch (this) {
      case Language.en:
        return 'English';
      case Language.es:
        return 'Spanish';
      case Language.zh:
        return 'Chinese';
      case Language.hi:
        return 'Hindi';
      case Language.ar:
        return 'Arabic';
      case Language.bn:
        return 'Bengali';
      case Language.pt:
        return 'Portuguese';
      case Language.ru:
        return 'Russian';
      case Language.ja:
        return 'Japanese';
      case Language.de:
        return 'German';
      case Language.fr:
        return 'French';
      case Language.tr:
        return 'Turkish';
      case Language.ko:
        return 'Korean';
      case Language.it:
        return 'Italian';
      case Language.pl:
        return 'Polish';
      case Language.uk:
        return 'Ukrainian';
      case Language.nl:
        return 'Dutch';
      case Language.fa:
        return 'Persian';
      case Language.vi:
        return 'Vietnamese';
      case Language.ta:
        return 'Tamil';
      case Language.ur:
        return 'Urdu';
      case Language.sv:
        return 'Swedish';
      case Language.ro:
        return 'Romanian';
      case Language.el:
        return 'Greek';
      case Language.cs:
        return 'Czech';
      case Language.hu:
        return 'Hungarian';
      case Language.fi:
        return 'Finnish';
      case Language.id:
        return 'Indonesian';
      case Language.th:
        return 'Thai';
      case Language.bg:
        return 'Bulgarian';
      case Language.da:
        return 'Danish';
      case Language.he:
        return 'Hebrew';
      case Language.sk:
        return 'Slovak';
      case Language.no:
        return 'Norwegian';
      case Language.hr:
        return 'Croatian';
      case Language.lt:
        return 'Lithuanian';
      case Language.sl:
        return 'Slovenian';
      case Language.et:
        return 'Estonian';
      case Language.lv:
        return 'Latvian';
      case Language.sw:
        return 'Swahili';
    }
  }

  String get flagEmoji {
    switch (this) {
      case Language.en:
        return '🇬🇧';
      case Language.es:
        return '🇪🇸';
      case Language.zh:
        return '🇨🇳';
      case Language.hi:
        return '🇮🇳';
      case Language.ar:
        return '🇸🇦';
      case Language.bn:
        return '🇧🇩';
      case Language.pt:
        return '🇵🇹';
      case Language.ru:
        return '🇷🇺';
      case Language.ja:
        return '🇯🇵';
      case Language.de:
        return '🇩🇪';
      case Language.fr:
        return '🇫🇷';
      case Language.tr:
        return '🇹🇷';
      case Language.ko:
        return '🇰🇷';
      case Language.it:
        return '🇮🇹';
      case Language.pl:
        return '🇵🇱';
      case Language.uk:
        return '🇺🇦';
      case Language.nl:
        return '🇳🇱';
      case Language.fa:
        return '🇮🇷';
      case Language.vi:
        return '🇻🇳';
      case Language.ta:
        return '🇱🇰';
      case Language.ur:
        return '🇵🇰';
      case Language.sv:
        return '🇸🇪';
      case Language.ro:
        return '🇷🇴';
      case Language.el:
        return '🇬🇷';
      case Language.cs:
        return '🇨🇿';
      case Language.hu:
        return '🇭🇺';
      case Language.fi:
        return '🇫🇮';
      case Language.id:
        return '🇮🇩';
      case Language.th:
        return '🇹🇭';
      case Language.bg:
        return '🇧🇬';
      case Language.da:
        return '🇩🇰';
      case Language.he:
        return '🇮🇱';
      case Language.sk:
        return '🇸🇰';
      case Language.no:
        return '🇳🇴';
      case Language.hr:
        return '🇭🇷';
      case Language.lt:
        return '🇱🇹';
      case Language.sl:
        return '🇸🇮';
      case Language.et:
        return '🇪🇪';
      case Language.lv:
        return '🇱🇻';
      case Language.sw:
        return '🇰🇪';
    }
  }

  bool get isPopularLanguage {
    return [
      Language.en,
      Language.es,
      Language.fr,
      Language.de,
      Language.ja,
      Language.ko,
      Language.it,
      Language.pt,
      Language.zh,
      Language.hi,
    ].contains(this);
  }
}
