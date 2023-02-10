import 'package:get/get.dart';
import 'package:prostep1/bindings/home_binding.dart';
import 'package:prostep1/presentation/Course%20Content/Course_Content.dart';
import 'package:prostep1/presentation/Course%20Content/aboutthiscoures.dart';
import 'package:prostep1/presentation/Course%20Content/comments.dart';
import 'package:prostep1/presentation/Course%20Content/course_content1.dart';
import 'package:prostep1/presentation/Course%20Content/responses.dart';
import 'package:prostep1/presentation/forgetpassword/forget_password_view.dart';
import 'package:prostep1/presentation/login/login_view.dart';
import 'package:prostep1/presentation/main/BottomBar.dart';
import 'package:prostep1/presentation/main/filtering.dart';
import 'package:prostep1/presentation/onboarding/view/onboarding_view.dart';
import 'package:prostep1/presentation/profile/Edit%20Profile/edit_profile.dart';
import 'package:prostep1/presentation/profile/main_profile.dart';
import 'package:prostep1/presentation/registere/register_view.dart';
import 'package:prostep1/presentation/splash/splash_view_animation.dart';
import 'package:prostep1/presentation/store_details/store_details_view.dart';
import 'package:prostep1/presentation/teacher_information/teacher_information_topbar.dart';

import '../chats/contact/chat_page.dart';
import '../chats/main_chate.dart';
import '../profile/contact/edit_contact.dart';

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
  static const String maineditprofile = "/maineditprofile";
  static const String coursecontent = "/coursecontent";
  static const String coursecontent1 = "/coursecontent1";
  static const String aboutthisCourse = "/aboutthisCourse";
  static const String comments = "/comments";
  static const String responses = "/responses";
  static const String editContact = "/editeContact";
  static const String mainChat = "/mainChat";
  static const String contactChat = "/contactChat";

  static String getsplashRoute() => splashRoute;
  static String getloginRoute() => loginRoute;
  static String getregisterRoute() => registerRoute;
  static String getforgetpasswordRoute() => forgetpasswordRoute;
  static String getmainRoute() => mainRoute;
  static String getstoreDetailsRoute() => storeDetailsRoute;
  static String getonbording() => onbording;
  static String getsplashviewanimation() => splashviewanimation;
  static String getfiltering() => filtering;
  static String getsetting() => setting;
  static String getteacherinformation() => teacherinformation;
  static String getteacherinfotopbar() => teacherinfotopbar;
  static String getmainProfileScreen() => mainProfileScreen;
  static String getmaineditprofile() => maineditprofile;
  static String getcoursecontent() => coursecontent;
  static String getcoursecontent1() => coursecontent1;
  static String getaboutthisCourse() => aboutthisCourse;
  static String getcomments() => comments;
  static String getresponses(int comment) => "$responses?commentId=$comment";
  static String getEditContact() => editContact;
  static String getMainChat() => mainChat;
  static String getContactChat() => contactChat;

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
        transition: Transition.fade,
        transitionDuration: const Duration(seconds: 1)),

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
        transition: Transition.fade,
        transitionDuration: const Duration(seconds: 1)),
    GetPage(
        name: splashviewanimation,
        page: () => const MyCustomSplashScreen(),
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
    GetPage(
        name: maineditprofile,
        page: () => const EditProfile(),
        transition: Transition.upToDown),
    GetPage(
        name: coursecontent,
        page: () => const CourseContent(),
        transition: Transition.upToDown),
    GetPage(
        name: coursecontent1,
        page: () => const CourseContent1(),
        transition: Transition.upToDown),
    GetPage(
        name: aboutthisCourse,
        page: () => const AboutThisCourse(),
        transition: Transition.upToDown),
    GetPage(
        name: comments,
        page: () => const CommentsView(),
        transition: Transition.upToDown),

    GetPage(
        name: responses,
        page: () {
          var comment = Get.parameters['commentId'];
          return ResponsesView(commentId: int.parse(comment!));
        },
        transition: Transition.upToDown),
    GetPage(
        name: editContact,
        page: () => const EditContact(),
        transition: Transition.fade),
    GetPage(
        name: mainChat,
        page: () => const MainChat(),
        transition: Transition.fade),
    GetPage(
        name: contactChat,
        page: () => const ChatPage(),
        transition: Transition.fade),

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
