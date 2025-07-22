import 'package:bloc_clean_coding/config/Routes/route_names.dart';
import 'package:bloc_clean_coding/config/components/loding_widget.dart';
import 'package:bloc_clean_coding/config/components/no_internet_widget.dart';
import 'package:bloc_clean_coding/config/components/rounded_button.dart';
import 'package:bloc_clean_coding/data/exceptions/app_exceptions.dart';
import 'package:bloc_clean_coding/service/splash/splash_serivices.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  SplashServices _splashService = SplashServices();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _splashService.isLogin(context: context);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Text("Splash Screen"),
        ),
      ),
    );
  }
}
