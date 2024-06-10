import 'package:ehph/core/constant/routes.dart';
import 'package:ehph/core/middelware/mymiddelware.dart';
import 'package:ehph/view/screen/language.dart';
import 'package:ehph/view/screen/onboarding.dart';
 

import 'package:get/get_navigation/src/routes/get_route.dart';
 
//Route of getx ya3mil delete lel memory automatiquement 3inda inti9al bayna pages
List<GetPage<dynamic>>? routes = [
  //main page start
  GetPage(name: "/", page: () => Language(), middlewares: [MyMiddleWare()]),
  //auth
 // GetPage(name: AppRoute.login, page: () => const Login()),
 // GetPage(name: AppRoute.signUp, page: () => const SignUp()),
 // GetPage(name: AppRoute.forgetPassword, page: () => const ForgetPassword()),
 // GetPage(name: AppRoute.verifyCode, page: () => const VerifyCode()),
  
  GetPage(name: AppRoute.onBoarding, page: () => const OnBoarding()),

];
