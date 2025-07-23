import 'dart:convert';

import 'package:bloc_clean_coding/models/user/user_model.dart';
import 'package:bloc_clean_coding/service/storage/local_storage.dart';
import 'package:flutter/material.dart';

class SessionManager {
  static final SessionManager sessionManager = SessionManager._internal();

  final LocalStorage localStorage = LocalStorage();

  UserModel user = UserModel();

  bool? isLoggedin;

  SessionManager._internal() {
    isLoggedin = false;
  }

  factory SessionManager() {
    return sessionManager;
  }
  Future<void> saveInUserPreference({required dynamic user}) async {
    localStorage.setValue(key: 'token', value: jsonEncode(user));
    localStorage.setValue(key: 'isLoggedin', value: "true");
  }

  Future<void> getUserPreference() async {
    try {
      var userData = await localStorage.readValue(key: 'token');
      var logedInStatus = await localStorage.readValue(key: "isLoggedin");
      print("logged values $user $logedInStatus");

      if (userData.isNotEmpty) {
        SessionManager().user = UserModel.fromJson(jsonDecode(userData));
      }

      SessionManager().isLoggedin = logedInStatus ? true : false;
    } catch (e) {
      debugPrint(e.toString());
    }
  }
}
