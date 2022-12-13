import 'package:get/get.dart';
import 'package:prostep1/bindings/home_binding.dart';
import 'package:prostep1/presentation/forgetpassword/forget_password_view.dart';
import 'package:prostep1/presentation/login/login_view.dart';
import 'package:prostep1/presentation/main/BottomBar.dart';
import 'package:prostep1/presentation/main/filtering.dart';
import 'package:prostep1/presentation/onboarding/view/onboarding_view.dart';
import 'package:prostep1/presentation/profile/main_profile.dart';
import 'package:prostep1/presentation/registere/register_view.dart';
import 'package:prostep1/presentation/splash/splash_view_animation.dart';
import 'package:prostep1/presentation/store_details/store_details_view.dart';
import 'package:prostep1/teacher_information/teacher_information_topbar.dart';

import '../profile/main_profile.dart';
import '../profile/main_profile.dart';

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
  static const String setting = "/Setting";
  static const String teacherinformation = "/teacherinformation";
  static const String teacherinfotopbar = "/teacherinfotopbar";
  static const String mainProfileScreen = "/mainProfileScreen";

  static String getsplashRoute() => '$splashRoute';
  static String getloginRoute() => '$loginRoute';
  static String getregisterRoute() => '$registerRoute';
  static String getforgetpasswordRoute() => '$forgetpasswordRoute';
  static String getmainRoute() => '$mainRoute';
  static String getstoreDetailsRoute() => '$storeDetailsRoute';
  static String getonbording() => '$onbording';
  static String getsplashviewanimation() => '$splashviewanimation';
  static String getfiltering() => '$filtering';
  static String getsetting() => '$setting';
  static String getteacherinformation() => '$teacherinformation';
  static String getteacherinfotopbar() => '$teacherinfotopbar';
  static String getmainProfileScreen() => '$mainProfileScreen';

  static List<GetPage> routes = [
    // GetPage(name: splashRoute, page: () => SplashView()),
    GetPage(
        name: mainRoute,
        page: () => const BottomBar(),
        transition: Transition.fade,
        binding: HomeBinding()),
    GetPage(
        name: loginRoute,
        page: () => const LoginScreen(),
        transition: Transition.fade),
    GetPage(
        name: registerRoute,
        page: () => const RegisterScreen(),
        transition: Transition.fade),
    GetPage(
        name: forgetpasswordRoute,
        page: () => const ForgetPasswordView(),
        transition: Transition.fade),
    GetPage(
        name: storeDetailsRoute,
        page: () => const StoreDetailsView(),
        transition: Transition.fade),
    GetPage(
        name: onbording,
        page: () => const OnBoardingView(),
        transition: Transition.fade),
    GetPage(
        name: splashviewanimation,
        page: () => MyCustomSplashScreen(),
        transition: Transition.fade),
    GetPage(
        name: filtering,
        page: () => const Filtering(),
        transition: Transition.fade),
    GetPage(
        name: teacherinformation,
        page: () => const TeacherInfoTopbar(),
        transition: Transition.fade),
    GetPage(
        name: teacherinfotopbar,
        page: () => const TeacherInfoTopbar(),
        transition: Transition.upToDown),
    GetPage(
        name: mainProfileScreen,
        page: () => const MainProfileScreen(),
        transition: Transition.upToDown),

    // GetPage(
    //   name: popularFood,
    //   page: () {
    //     var pageId = Get.parameters['pageId'];
    //     var page = Get.parameters['page'];
    //     return PopularFoodDetail(pageId: int.parse(pageId!), page: page!);
    //   },
    //   transition: Transition.fadeIn,
    // ),
  ];
}

// class RouteGenerator {
//   static Route<dynamic> getRoute(RouteSettings settings) {
//     switch (settings.name) {
//       // case Routes.splashRoute:
//       // return MaterialPageRoute(builder: (_) => const SplashView());
//       case Routes.loginRoute:
//       // return MaterialPageRoute(builder: (_) => const LoginScreen());
//       case Routes.registerRoute:
//         return MaterialPageRoute(builder: (_) => const RegisterScreen());
//       case Routes.forgetpasswordRoute:
//         return MaterialPageRoute(builder: (_) => const ForgetPasswordView());
//       case Routes.mainRoute:
//       // return MaterialPageRoute(builder: (_) => const BottomBar());
//       case Routes.storeDetailsRoute:
//         return MaterialPageRoute(builder: (_) => const StoreDetailsView());
//       case Routes.onbording:
//         return MaterialPageRoute(builder: (_) => const OnBoardingView());
//       case Routes.splashviewanimation:
//         return MaterialPageRoute(builder: (_) => MyCustomSplashScreen());
//       case Routes.filtering:
//         return MaterialPageRoute(builder: (_) => const Filtering());
//       case Routes.setting:
//         return MaterialPageRoute(builder: (_) => const SettingPage());
//       default:
//         return unDefinedRoute();
//     }
//   }

//   static Route<dynamic> unDefinedRoute() {
//     return MaterialPageRoute(
//         builder: (_) => Scaffold(
//               appBar: AppBar(
//                 title: const Text(AppStrings.noRouteFound),
//               ),
//               body: const Center(
//                 child: Text(AppStrings.noRouteFound),
//               ),
//             ));
//   }
// }
