import 'package:get_it/get_it.dart';

import 'app_service.dart';

final locator = GetIt.instance;

void setup() {
  locator.registerSingleton<Singleton>(Singleton());
  locator.registerFactory(() => Factory());
}
