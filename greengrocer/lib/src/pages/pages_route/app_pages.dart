import 'package:get/get.dart';
import 'package:greengrocer/src/pages/auth/component/sign_up_screen.dart';
import 'package:greengrocer/src/pages/auth/sign_in_screen.dart';
import 'package:greengrocer/src/pages/base/base_screen.dart';
import 'package:greengrocer/src/pages/splash/splash_screen.dart';

abstract class AppPages {

  static final pages = <GetPage>[

    GetPage(
      page: () => const SplashScreen(),
      name: PagesRoutes.splashRoute,
    ),

    GetPage(
      page: () => SignUpScreen(),
      name: PagesRoutes.signUpRoute,
    ),

    GetPage(
      page: () => SignInScreen(),
      name: PagesRoutes.signInRoute,
    ),

    GetPage(
      page: () => const BaseScreen(),
      name: PagesRoutes.baseRoute,
    ),
  ];
}


abstract class PagesRoutes {
  static const String signInRoute = '/signIn';
  static const String signUpRoute = '/signUp';
  static const String splashRoute = '/splashscreen';
  static const String baseRoute = '/';
}