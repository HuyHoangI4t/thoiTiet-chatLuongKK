import 'package:material_ui/material_ui.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:rain/i18n/locale_utils.dart';
import 'package:rain/i18n/strings.g.dart';

import '../../helpers/test_helpers.dart';

void main() {
  setUpAll(() async => initTestEnvironment());

  group('appLocaleFromLanguageCode', () {
    test('parses stored language codes', () {
      expect(appLocaleFromLanguageCode('en_US'), AppLocale.enUs);
      expect(appLocaleFromLanguageCode('vi_VN'), AppLocale.viVn);
      expect(appLocaleFromLanguageCode(null), AppLocale.viVn);
      expect(appLocaleFromLanguageCode(''), AppLocale.viVn);
    });
  });

  group('appLocaleFromFlutterLocale', () {
    test('maps Flutter locales to app locales', () {
      expect(
        appLocaleFromFlutterLocale(const Locale('en', 'US')),
        AppLocale.enUs,
      );
      expect(
        appLocaleFromFlutterLocale(const Locale('vi', 'VN')),
        AppLocale.viVn,
      );
    });
  });

  group('languageCodeFromAppLocale', () {
    test('serializes with country or language only', () {
      expect(languageCodeFromAppLocale(AppLocale.enUs), 'en_US');
      expect(languageCodeFromAppLocale(AppLocale.viVn), 'vi_VN');
    });
  });
}
