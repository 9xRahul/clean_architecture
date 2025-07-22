import 'package:bloc_clean_coding/config/Routes/route_names.dart';
import 'package:bloc_clean_coding/config/Routes/routes.dart';
import 'package:bloc_clean_coding/repository/auth/login_mock_repository.dart';
import 'package:bloc_clean_coding/repository/auth/login_repository.dart';
import 'package:bloc_clean_coding/repository/auth/login_repository_api.dart';
import 'package:bloc_clean_coding/views/splash/splash_screen.dart.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get_it/get_it.dart';

GetIt getIt = GetIt.instance;
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  serviceLocator();
  runApp(const MyApp());
}

void serviceLocator() {
  getIt.registerLazySingleton<LoginRepository>(() => LoginMockRepository());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: RouteNames.splashScreen,
      onGenerateRoute: Routes.generateRoutes,
    );
  }
}
