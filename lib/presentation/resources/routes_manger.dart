import 'package:flutter/material.dart';
import 'package:prostep1/presentation/forgetpassword/forget_password_view.dart';
import 'package:prostep1/presentation/login/login_view.dart';
import 'package:prostep1/presentation/main/BottomBar.dart';
import 'package:prostep1/presentation/main/filtering.dart';
import 'package:prostep1/presentation/onboarding/view/onboarding_view.dart';
import 'package:prostep1/presentation/registere/register_view.dart';
import 'package:prostep1/presentation/resources/stringes_manger.dart';
import 'package:prostep1/presentation/splash/splash_view_animation.dart';
import 'package:prostep1/presentation/store_details/store_details_view.dart';

class Routes {
  static const String splashRoute = "/";
  static const String loginRoute = "/login";
  static const String registerRoute = "/register";
  static const String forgetpasswordRoute = "/forgetpassword";
  static const String mainRoute = "/main";
  static const String storeDetailsRoute = "/storeDetails";
  static const String onbording = "/onbording";
  static const String splashviewanimation = "/splashviewanimation";
  static const String filtering = "/Filtering";
}

class RouteGenerator {
  static Route<dynamic> getRoute(RouteSettings settings) {
    switch (settings.name) {
      // case Routes.splashRoute:
      // return MaterialPageRoute(builder: (_) => const SplashView());
      case Routes.loginRoute:
        return MaterialPageRoute(builder: (_) => const LoginScreen());
      case Routes.registerRoute:
        return MaterialPageRoute(builder: (_) => const RegisterScreen());
      case Routes.forgetpasswordRoute:
        return MaterialPageRoute(builder: (_) => const ForgetPasswordView());
      case Routes.mainRoute:
        return MaterialPageRoute(builder: (_) => const BottomBar());
      case Routes.storeDetailsRoute:
        return MaterialPageRoute(builder: (_) => const StoreDetailsView());
      case Routes.onbording:
        return MaterialPageRoute(builder: (_) => const OnBoardingView());
      case Routes.splashviewanimation:
        return MaterialPageRoute(builder: (_) => MyCustomSplashScreen());
      case Routes.filtering:
        return MaterialPageRoute(builder: (_) => const Filtering());
      default:
        return unDefinedRoute();
    }
  }

  static Route<dynamic> unDefinedRoute() {
    return MaterialPageRoute(
        builder: (_) => Scaffold(
              appBar: AppBar(
                title: const Text(AppStrings.noRouteFound),
              ),
              body: const Center(
                child: Text(AppStrings.noRouteFound),
              ),
            ));
  }
}
