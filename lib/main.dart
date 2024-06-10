 import 'package:ehph/core/localization/local.dart';
import 'package:ehph/core/localization/local_controller.dart';
import 'package:ehph/core/services/services.dart';
import 'package:ehph/routes.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ehph/core/constant/color.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initialServices();
  runApp(const MyApp());
}

initialServices() async {
  await Get.putAsync(() => MyServices().init());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    MyLocaleController controller = Get.put(MyLocaleController());
    return GetMaterialApp(
      title: 'HASNAOUI PRIVATE HOSPITAL',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          textTheme: const TextTheme(
              displayLarge:
                  TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              displayMedium:
                  TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
              bodyLarge: TextStyle(color: AppColor.secondaryColor, fontSize: 13)),
          primarySwatch: Colors.blue),
      locale: controller.language,
      translations: MyLocale(),
       //home: OnBoarding(),
      //nkhalihe yebda onording mel routes
      //routes: routes,
      getPages: routes,
    );
  }
}
