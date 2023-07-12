import 'package:emart_app/consts/colors.dart';
import 'package:emart_app/consts/consts.dart';
import 'package:emart_app/widgets/applogo_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'auth_screen/login_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  changeScreen() {
    Future.delayed(Duration(seconds: 3)).then((value) {
      Get.to(() => const LoginScreen());
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    changeScreen();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: redColor,
      body: Column(
        children: [
          Image.asset(icSplashBg, width: 300).box.alignTopLeft.make(),
          20.heightBox,
          appLogoWidget(),
          appname.text.white.fontFamily(bold).size(22).make(),
          appversion.text.white.make(),
          const Spacer(),
          credits.text.white.fontFamily(semibold).make(),
          30.heightBox
        ],
      ),
    );
  }
}
