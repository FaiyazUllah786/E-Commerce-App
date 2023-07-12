import 'package:flutter/material.dart';

import '../consts/consts.dart';

Widget appLogoWidget() {
  return Image.asset(icAppLogo)
      .box
      .white
      .size(77, 77)
      .rounded
      .padding(EdgeInsets.all(8.0))
      .make();
}
