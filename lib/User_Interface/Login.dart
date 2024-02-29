import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ostello/Common/bold_text.dart';
import 'package:ostello/User_Interface/Home.dart';
import 'package:provider/provider.dart';

import '../Common/Provider.dart';

class Login extends StatefulWidget {
  Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  var locationController = TextEditingController();
  var nameController = TextEditingController();

  bool _validate = false;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Login"),
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: SingleChildScrollView(
              child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  controller: nameController,
                  decoration: InputDecoration(
                      hintText: 'Enter your Name',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8))),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your Name';
                    } else if (value!.length < 3) {
                      return 'Please Enter valid name';
                    }
                    return null;
                  },
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  controller: locationController,
                  decoration: InputDecoration(
                      hintText: 'Enter your Address',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8))),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your valid Address';
                    }
                    return null;
                  },
                ),
                SizedBox(
                  height: 12,
                ),
                Container(
                  height: 50,
                  width: double.infinity,
                  color: Colors.blue,
                  child: TextButton(
                      onPressed: () {
                        if (_formKey.currentState?.validate() == true) {
                          Provider.of<User>(context, listen: false).signup(
                            locationController.text.toString(),
                            nameController.text.toString(),
                          );
                          Get.to(() => Home());
                        }
                      },
                      child: Center(
                        child: Text("Login"),
                      )),
                ),
                SizedBox(
                  height: 12,
                ),
                Center(
                    child: BoldText(
                        name: "Please Enter Name and Location", fontsize: 35))
              ],
            ),
          )),
        ),
      ),
    );
  }
}
