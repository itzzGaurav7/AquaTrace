// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:aqua_trace/cameraPage.dart';
import 'package:aqua_trace/ui/buttons.dart';
import 'package:aqua_trace/ui/square_tile.dart';
import 'package:aqua_trace/ui/textfield.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class login extends StatelessWidget {
  login({Key? key}) : super(key: key);

  //  controllers
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
  //
  void signUserIn() {
    Get.to(cameraPage());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(backgroundColor: Colors.black),
      body: Column(
        children: [
          //logo

          Icon(
            Icons.waterfall_chart_rounded,
            size: 100,
          ),
          SizedBox(
            height: 50,
          ),

          //welcome text

          Text(
            'welcome back',
            style: TextStyle(color: Colors.amber, fontSize: 16),
          ),
          SizedBox(
            height: 25,
          ),

          //username
          textfield(
            controller: usernameController,
            hintText: 'Username',
            obscureText: false,
          ),

          //password
          textfield(
              controller: passwordController,
              hintText: 'Password',
              obscureText: true),
          SizedBox(
            height: 10,
          ),

          // forget password

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'Forgot Password?',
                  style: TextStyle(color: Colors.white70),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 25,
          ),

          // sign in
          button(
            OnTap: signUserIn,
          ),
          SizedBox(
            height: 50,
          ),

          // continue with
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                    child: Divider(
                  thickness: 0.5,
                  color: Colors.black,
                )),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Text(
                    'Or Continue with',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                Expanded(
                  child: Divider(
                    thickness: 0.50,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),

          SizedBox(
            height: 25,
          ),
          // google+ facebook auth

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // google
              Square_tile(imagePath: 'assets/google1.png'),

              SizedBox(
                height: 50,
                width: 20,
              ),

              //fb
              Square_tile(imagePath: 'assets/google1.png'),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          // register
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Not a member'),
              SizedBox(
                width: 4,
              ),
              Text(
                'Register now',
                style:
                    TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
              )
            ],
          )
        ],
      ),
    );
  }
}
