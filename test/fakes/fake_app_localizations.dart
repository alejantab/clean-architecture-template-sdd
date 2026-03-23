import 'package:clean_arch_sdd/l10n/app_localizations.dart';

/// Fake implementation of [AppLocalizations] for BLoC and widget tests.
///
/// Returns stub strings for all getters so tests do not depend on
/// actual localization or BuildContext. Inject this when a BLoC or
/// component requires localized strings.
class FakeAppLocalizations extends AppLocalizations {
  FakeAppLocalizations([super.locale = 'en']);

  @override
  String get appTitle => 'PomoAlly';
}
