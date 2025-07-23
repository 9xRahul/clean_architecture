import 'package:bloc_clean_coding/config/Routes/route_names.dart';
import 'package:bloc_clean_coding/service/session/session_manager.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("HomeScreen"),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.pushNamedAndRemoveUntil(
                  context,
                  RouteNames.loginScreen,
                  (route) => false,
                );
                Future.delayed(Duration(milliseconds: 100), () {
                  SessionManager().clearData();
                });
              },
              icon: Icon(Icons.logout))
        ],
      ),
      body: Center(
        child: Text("Welcome to home screen"),
      ),
    );
  }
}
