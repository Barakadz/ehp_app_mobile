import 'package:ehph/controller/onboarding.conroller.dart';
import 'package:ehph/core/constant/color.dart';
import 'package:ehph/core/constant/imageasset.dart';
import 'package:ehph/core/constant/routes.dart';
import 'package:ehph/data/datasource/static/static.dart';
import 'package:ehph/view/screen/onBoarding.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomSliderOnBoarding extends GetView<OnBoardingControllerImp> {
  const CustomSliderOnBoarding({super.key});
  @override
  Widget build(BuildContext context) {
    return PageView.builder(
        controller: controller.pageController,
        onPageChanged: (val) {
          //print(val);
          controller.onPageChanged(val);
        },
        itemCount: onBoardingList.length,
        itemBuilder: (context, i) => Column(
              children: [
                const SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Image.asset(
                      AppImageAsset.logo,
                      width: 200,
                    ),
                    SizedBox(width: 30),
                    InkWell(
                      onTap: () {
                        Get.offAllNamed(AppRoute.home);
                      },
                      child: Text(
                        "onBoardingtitre".tr,
                        style: TextStyle(color: Colors.grey),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Expanded(
                    child: Image(
                        image: AssetImage(onBoardingList[i].image!),
                        fit: BoxFit.fitWidth)),
                const SizedBox(height: 10),
                
                Container(
                    width: Get.width-100,
            height: 100,
                    padding: EdgeInsets.symmetric(horizontal: 2,vertical: 3),
                      decoration: BoxDecoration(                  color: Colors.amber,

               borderRadius: BorderRadius.circular(20), // Adjust the value as needed
            ),
                    alignment: Alignment.center,
                    child: Text(onBoardingList[i].body!,
                        textAlign: TextAlign.center,
                        //jebeteha men theme data fel main
                        style: Theme.of(context).textTheme.bodyLarge)),
              ],
            ));
  }
}
