import 'package:emart_app/consts/consts.dart';
import 'package:emart_app/consts/list.dart';
import 'package:emart_app/views/auth_screen/signup_screen.dart';
import 'package:emart_app/widgets/applogo_widget.dart';
import 'package:emart_app/widgets/bg_widget.dart';
import 'package:emart_app/widgets/custom_textfield.dart';
import 'package:emart_app/widgets/our_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return bgWidget(Scaffold(
      resizeToAvoidBottomInset: false,
      body: Center(
        child: Column(
          children: [
            (context.screenHeight * 0.1).heightBox,
            appLogoWidget(),
            10.heightBox,
            "Log In to $appname".text.white.fontFamily(bold).size(18).make(),
            15.heightBox,
            Column(
              children: [
                customTextField(
                    title: email, hint: emailHint, obscureText: false),
                customTextField(
                    title: password, hint: passwordHint, obscureText: true),
                TextButton(
                  onPressed: () {},
                  child: Text(forgetPass),
                ).box.alignBottomRight.make(),
                5.heightBox,
                ourButton(
                        color: redColor,
                        title: login,
                        textColor: whiteColor,
                        onPress: () {})
                    .box
                    .width(context.screenWidth)
                    .padding(EdgeInsets.symmetric(horizontal: 16))
                    .make(),
                15.heightBox,
                createAcc.text.make(),
                5.heightBox,
                ourButton(
                        color: lightGolden,
                        title: signUp,
                        textColor: redColor,
                        onPress: () {
                          Get.to(() => SignUpScreen());
                        })
                    .box
                    .width(context.screenWidth)
                    .padding(EdgeInsets.symmetric(horizontal: 16))
                    .make(),
                15.heightBox,
                loginWith.text.color(fontGrey).make(),
                5.heightBox,
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(
                    socialIconLogo.length,
                    (index) => Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CircleAvatar(
                        radius: 25,
                        backgroundColor: Colors.transparent,
                        child: Image.asset(
                          socialIconLogo[index],
                          width: 40,
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ).box.white.rounded.p16.shadowSm.make()
          ],
        ),
      ),
    ));
  }
}
