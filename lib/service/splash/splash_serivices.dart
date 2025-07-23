import 'dart:async';

import 'package:bloc_clean_coding/config/Routes/route_names.dart';
import 'package:bloc_clean_coding/service/session/session_manager.dart';

import 'package:flutter/material.dart';

class SplashServices {
  void isLogin({required BuildContext context}) {
    SessionManager().getUserPreference().then((value) {
      print("value : ${SessionManager().isLoggedin}");
      if (SessionManager().isLoggedin ?? false) {
        Navigator.pushNamedAndRemoveUntil(
          context,
          RouteNames.homeScreen,
          (route) => false,
        );
      } else {
        Navigator.pushNamedAndRemoveUntil(
          context,
          RouteNames.loginScreen,
          (route) => false,
        );
      }
    }).onError((err, st) {
      Timer(
        Duration(seconds: 3),
        () => Navigator.pushNamedAndRemoveUntil(
          context,
          RouteNames.loginScreen,
          (route) => false,
        ),
      );
    });
  }
}
