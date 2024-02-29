import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ostello/User_Interface/Home.dart';
import 'package:ostello/Common/Provider.dart';
import 'package:provider/provider.dart';
import 'package:ostello/User_Interface/Login.dart';
void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (_) => User())
    ],
    child: MyApp(),
  ));
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context){
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: Login(),

    );
  }
  }
