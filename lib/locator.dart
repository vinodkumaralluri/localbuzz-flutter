import 'package:get_it/get_it.dart';

// Services
import 'package:proshaala_parents/services/api/authentication_api.dart';
import 'package:proshaala_parents/services/dialog_service.dart';
import 'package:proshaala_parents/services/local_storage_service.dart';

GetIt locator = GetIt.instance;

Future<void> setupLocator() async {
  locator.registerLazySingleton(() => DialogService());
  var localStorageService = await LocalStorageService.getInstance();
  locator.registerSingleton<LocalStorageService>(localStorageService);

  // API Services
  locator.registerLazySingleton(() => AuthenticationApi());
}
