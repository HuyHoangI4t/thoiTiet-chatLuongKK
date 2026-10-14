import 'package:material_ui/material_ui.dart';
import 'package:rain/i18n/strings.g.dart';

/// App group identifier shared with home-screen widgets.
const String appGroupId = 'DARK NIGHT';

/// A supported UI language with its display name and Flutter locale.
class LanguageOption {
  const LanguageOption({required this.name, required this.locale});

  final String name;
  final Locale locale;
}

// Supported languages: Tiếng Việt and English
const _languageEntries = <(AppLocale, String)>[
  (AppLocale.viVn, 'Tiếng Việt'),
  (AppLocale.enUs, 'English'),
];

/// All languages offered in settings, in display order.
final List<LanguageOption> appLanguages = [
  for (final (locale, name) in _languageEntries)
    LanguageOption(name: name, locale: locale.flutterLocale),
];

/// Fallback language used when Vietnamese is unavailable.
final LanguageOption defaultLanguageOption = appLanguages.firstWhere(
  (l) => l.locale.languageCode == 'vi',
  orElse: () => appLanguages.first,
);
