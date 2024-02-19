import 'package:e_commerce_getx/view/screens/lang_screen.dart';
import 'package:e_commerce_getx/view/screens/login_screen.dart';
import 'package:e_commerce_getx/view/screens/onboarding_screen.dart';
import 'package:e_commerce_getx/view/screens/signup_screen.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

List<GetPage<dynamic>>? route = [
  GetPage(
    name: OnboardingScreen.screenRoute,
    page: () => const OnboardingScreen(),
  ),
  GetPage(
    name: LanguageScreen.screenRoute,
    page: () => const LanguageScreen(),
  ),
  GetPage(
    name: LogInScreen.screenRout,
    page: () => const LogInScreen(),
  ),
  GetPage(name: SignUpScreen.screenRout, page: () => const SignUpScreen(),)
];
