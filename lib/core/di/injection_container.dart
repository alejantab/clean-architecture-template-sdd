import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'injection_container.config.dart';

/// Global GetIt instance for dependency injection.
final GetIt getIt = GetIt.instance;

/// Configures all dependencies. Call this before [runApp].
@InjectableInit(
  initializerName: 'init',
  preferRelativeImports: true,
  asExtension: true,
)
void configureDependencies() => getIt.init();
