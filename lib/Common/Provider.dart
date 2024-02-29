import 'package:flutter/material.dart';


class User extends ChangeNotifier{
  String location = "";
  String name = "";
  void signup(String locationtxt, String nametxt){

    location = locationtxt;
    name = nametxt;
    notifyListeners();
  }
}