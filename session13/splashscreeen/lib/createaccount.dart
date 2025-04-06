// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:splashscreeen/assets.dart';
import 'package:splashscreeen/textbox.dart';
import 'package:splashscreeen/textstyles.dart';

class CreateAccount extends StatefulWidget {
  const CreateAccount({Key? key}) : super(key: key);

  @override
  State<CreateAccount> createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Create Account"),
        ),
        body: Stack(children: [
          Container(
            child: Image.asset(
              Assets.assetsGroup7,
              fit: BoxFit.cover,
              width: double.infinity,
              height: 300,
            ),
          ),
          Column(
            children: [
              SizedBox(
                height: 280,
              ),
              Container(
                width: double.infinity,
                height: 550,
                decoration: BoxDecoration(
                    color: Colors.yellow,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25),
                      topRight: Radius.circular(25),
                    )),
                child: Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: Column(children: [
                    Row(
                      children: [
                        CustomTextField(
                          width: 200,
                          obscureText: false,
                          hintText: "Email",
                          suffixIcon: null,
                          hintStyle: AppTextStyles.interRegular16,
                          style: AppTextStyles.interRegular16,
                        ),
                        CustomTextField(
                          width: 200,
                          obscureText: false,
                          hintText: "Email",
                          suffixIcon: null,
                          hintStyle: AppTextStyles.interRegular16,
                          style: AppTextStyles.interRegular16,
                        ),
                      ],
                    ),
                    CustomTextField(
                      width: 400,
                      obscureText: false,
                      hintText: "Email",
                      suffixIcon: null,
                      hintStyle: AppTextStyles.interRegular16,
                      style: AppTextStyles.interRegular16,
                    ),
                    CustomTextField(
                      width: 300,
                      obscureText: false,
                      hintText: "Email",
                      suffixIcon: null,
                      hintStyle: AppTextStyles.interRegular16,
                      style: AppTextStyles.interRegular16,
                    ),
                  ]),
                ),
              ),
            ],
          )
        ]));
  }
}
