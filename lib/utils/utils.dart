import 'package:auto_route/auto_route.dart';
import 'package:blogapp/presentation/routes/router_imports.gr.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Utils {
  static Future<void> loginManipulation(context) async {
    var token = await getToken();
    debugPrint(token);
    if (token != null) {
      AutoRouter.of(context).push(const BottomNavBarRoute());
    } else {
      AutoRouter.of(context).push(const AuthRoute());
    }
  }

  // Obtain shared preferences.
  static Future<void> saveToken(String token) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();

    await prefs.setString('token', token);
  }

  static Future<void> deleteToken() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();

    await prefs.remove('token');
  }

  static Future<String?> getToken() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();

    return prefs.getString("token");
  }
}
