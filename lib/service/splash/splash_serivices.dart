import 'dart:async';

import 'package:bloc_clean_coding/config/Routes/route_names.dart';
import 'package:bloc_clean_coding/service/session/session_manager.dart';
import 'package:flutter/material.dart';

class SplashServices {
  Future<void> isLogin({required BuildContext context}) async {
    try {
        await SessionManager().getUserPreference();
        
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
    } catch (e, st) {
      print("Error during splash login check: $e");
      print("StackTrace: $st");

      // Optional: delay to simulate splash duration
      await Future.delayed(Duration(seconds: 3));
      Navigator.pushNamedAndRemoveUntil(
        context,
        RouteNames.loginScreen,
        (route) => false,
      );
    }
  }
}
