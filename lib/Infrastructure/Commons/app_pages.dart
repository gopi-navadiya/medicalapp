import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:medicalapp/Infrastructure/Commons/app_routes.dart';
import 'package:medicalapp/UI/Screens/DashboardSection/LoginSection/SubScreens/forgot_password_one.dart';
import 'package:medicalapp/UI/Screens/DashboardSection/LoginSection/SubScreens/set_new_password.dart';
import 'package:medicalapp/UI/Screens/DashboardSection/LoginSection/login_binding.dart';
import 'package:medicalapp/UI/Screens/DashboardSection/LoginSection/login_screen.dart';
import 'package:medicalapp/UI/Screens/DashboardSection/OnBoardingSection/CreateAccount/create_account_binding.dart';
import 'package:medicalapp/UI/Screens/DashboardSection/OnBoardingSection/CreateAccount/create_account_screen.dart';
import 'package:medicalapp/UI/Screens/DashboardSection/OnBoardingSection/onboarding_binding.dart';
import 'package:medicalapp/UI/Screens/DashboardSection/OnBoardingSection/onboarding_screen.dart';
import 'package:medicalapp/UI/Screens/DashboardSection/SplashSection/splash_binding.dart';
import 'package:medicalapp/UI/Screens/DashboardSection/SplashSection/splash_screen.dart';
import 'package:medicalapp/UI/Screens/MainSection/HomeSection/home_bindings.dart';
import 'package:medicalapp/UI/Screens/MainSection/HomeSection/home_screen.dart';
import 'package:medicalapp/UI/Screens/MainSection/main_binding.dart';
import 'package:medicalapp/UI/Screens/MainSection/main_screen.dart';
import 'package:medicalapp/UI/Screens/NoInternet/nointernet_binding.dart';
import 'package:medicalapp/UI/Screens/NoInternet/nointernet_screen.dart';

class AppPages {
  static String initial = RouteConstant.splashScreen;
  static final routes = [
    GetPage(
      name: RouteConstant.splashScreen,
      page: () => const SplashScreen(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: RouteConstant.onBoardingScreen,
      page: () => const OnBoardingScreen(),
      binding: OnboardingBinding(),
    ),
    GetPage(
      name: RouteConstant.loginScreen,
      page: () => const LoginScreen(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: RouteConstant.forgotPasswordScreen,
      page: () => const ForgotPasswordOne(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: RouteConstant.createAccountScreen,
      page: () => const CreateAccountScreen(),
      binding: CreateAccountBinding(),
    ),
    GetPage(
      name: RouteConstant.setNewPasswordScreen,
      page: () => const SetNewPasswordScreen(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: RouteConstant.noInternetScreen,
      page: () => const NoInternetScreen(),
      binding: NoInternetBinding(),
    ),
    GetPage(
      name: RouteConstant.mainScreen,
      page: () => const MainScreen(),
      binding: MainBinding(),
    ),
    GetPage(
      name: RouteConstant.homeScreen,
      page: () => const HomeScreen(scannedItems: [],),
      binding: HomeBindings(),
    ),
  ];
}
