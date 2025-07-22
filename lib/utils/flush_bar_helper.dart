import 'package:another_flushbar/flushbar.dart';
import 'package:another_flushbar/flushbar_route.dart';
import 'package:bloc_clean_coding/bloc/login/login_bloc.dart';
import 'package:bloc_clean_coding/utils/enums.dart';
import 'package:flutter/material.dart';

class FlushBarHelper {
  static void showFlushBarErrorMessage({
    required String message,
    required BuildContext context,
    required LoginState state,
  }) {
    showFlushbar(
        context: context,
        flushbar: Flushbar(
          message: message,
          forwardAnimationCurve: Curves.bounceIn,
          margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          padding: EdgeInsets.all(20),
          duration: Duration(seconds: 2),
          borderRadius: BorderRadius.circular(5),
          flushbarPosition: FlushbarPosition.TOP,
          backgroundColor: state.postApiStatus == PostApiStatus.error
              ? Colors.red
              : Colors.black,
          icon: Icon(
            state.postApiStatus == PostApiStatus.error
                ? Icons.close
                : Icons.refresh_outlined,
            color: Colors.white,
          ),
        )..show(context));
  }
}
