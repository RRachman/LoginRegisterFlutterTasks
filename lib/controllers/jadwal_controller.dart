import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../models/jadwal_kuliah.dart';

class JadwalController extends ChangeNotifier {
  List<JadwalKuliah> jadwalList = [];

  Future<void> loadData() async {
    final prefs = await SharedPreferences.getInstance();
    final data = prefs.getString("jadwal_list");

    if (data != null) {
      List<dynamic> jsonList = jsonDecode(data);
      jadwalList = jsonList.map((e) => JadwalKuliah.fromJson(e)).toList();
    }
    notifyListeners();
  }

  Future<void> _saveData() async {
    final prefs = await SharedPreferences.getInstance();
    final jsonString = jsonEncode(jadwalList.map((e) => e.toJson()).toList());
    await prefs.setString("jadwal_list", jsonString);
  }

  void addJadwal(JadwalKuliah jadwal) {
    jadwalList.add(jadwal);
    _saveData();
    notifyListeners();
  }

  void updateJadwal(int index, JadwalKuliah jadwal) {
    jadwalList[index] = jadwal;
    _saveData();
    notifyListeners();
  }

  void deleteJadwal(int index) {
    jadwalList.removeAt(index);
    _saveData();
    notifyListeners();
  }
}
