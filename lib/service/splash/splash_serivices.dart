import 'dart:async';

import 'package:bloc_clean_coding/config/Routes/route_names.dart';
import 'package:flutter/material.dart';

class SplashServices {
  void isLogin({required BuildContext context}) {
    Timer(
        Duration(seconds: 3),
        () => Navigator.pushNamedAndRemoveUntil(
              context,
              RouteNames.loginScreen,
              (route) => false,
            ));
  }
}
