import 'package:get/get.dart';

import '../../consts/consts.dart';
import '../../widgets/applogo_widget.dart';
import '../../widgets/bg_widget.dart';
import '../../widgets/custom_textfield.dart';
import '../../widgets/our_button.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return bgWidget(Scaffold(
      resizeToAvoidBottomInset: false,
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              (context.screenHeight * 0.1).heightBox,
              appLogoWidget(),
              10.heightBox,
              "Join the $appname".text.white.fontFamily(bold).size(18).make(),
              15.heightBox,
              Column(
                children: [
                  customTextField(
                      title: name, hint: nameHint, obscureText: false),
                  customTextField(
                      title: email, hint: emailHint, obscureText: false),
                  customTextField(
                      title: password, hint: passwordHint, obscureText: true),
                  customTextField(
                      title: retypePass, hint: passwordHint, obscureText: true),
                  TextButton(
                    onPressed: () {},
                    child: Text(forgetPass),
                  ).box.alignBottomRight.make(),
                  5.heightBox,
                  Row(
                    children: [
                      Checkbox(
                        value: false,
                        onChanged: (value) {},
                        checkColor: redColor,
                      ),
                      10.widthBox,
                      Expanded(
                        child: RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: 'I agree to the ',
                                style: TextStyle(
                                  fontFamily: bold,
                                  color: fontGrey,
                                ),
                              ),
                              TextSpan(
                                text: termCondition,
                                style: TextStyle(
                                  fontFamily: bold,
                                  color: redColor,
                                ),
                              ),
                              TextSpan(
                                text: " & ",
                                style: TextStyle(
                                  fontFamily: bold,
                                  color: fontGrey,
                                ),
                              ),
                              TextSpan(
                                text: privacyPolicy,
                                style: TextStyle(
                                  fontFamily: bold,
                                  color: redColor,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  5.heightBox,
                  ourButton(
                          color: redColor,
                          title: signUp,
                          textColor: whiteColor,
                          onPress: () {})
                      .box
                      .width(context.screenWidth)
                      .padding(EdgeInsets.symmetric(horizontal: 16))
                      .make(),
                  Row(
                    // crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      alreadyAcc.text.make(),
                      TextButton(
                          style: TextButton.styleFrom(
                            foregroundColor: redColor,
                          ),
                          onPressed: () {
                            Get.back();
                          },
                          child: Text(login))
                    ],
                  )
                ],
              ).box.white.rounded.p16.shadowSm.make()
            ],
          ),
        ),
      ),
    ));
  }
}
