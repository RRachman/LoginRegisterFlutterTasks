import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../models/app_user.dart';

class AuthController extends ChangeNotifier {
  AppUser? currentUser;

  Future<bool> register(AppUser user) async {
    final prefs = await SharedPreferences.getInstance();

    final existingEmail = prefs.getString("user_email");
    if (existingEmail != null && existingEmail == user.email) {
      return false;
    }

    await prefs.setString("user_fullName", user.fullName);
    await prefs.setString("user_nim", user.nim);
    await prefs.setString("user_prodi", user.prodi);
    await prefs.setString("user_email", user.email);
    await prefs.setString("user_password", user.password);

    currentUser = user;
    notifyListeners();
    return true;
  }

  Future<bool> login(String email, String password) async {
    final prefs = await SharedPreferences.getInstance();

    final savedEmail = prefs.getString("user_email");
    final savedPassword = prefs.getString("user_password");

    if (email == savedEmail && password == savedPassword) {
      currentUser = AppUser(
        fullName: prefs.getString("user_fullName")!,
        nim: prefs.getString("user_nim")!,
        prodi: prefs.getString("user_prodi")!,
        email: email,
        password: password,
      );

      notifyListeners();
      return true;
    }
    return false;
  }

  Future<void> logout() async {
    currentUser = null;
    notifyListeners();
  }
}
