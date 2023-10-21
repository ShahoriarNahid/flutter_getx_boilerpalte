abstract class AppTranslation {
  static Map<String, Map<String, String>> translationsKeys = {
    'en_US': enUS,
    'bn': bn,
  };
}

final Map<String, String> enUS = {
  'submit': 'Submit @email',
};

final Map<String, String> bn = {
  'submit': 'জমা',
};
