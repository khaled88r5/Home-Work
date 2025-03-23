import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:splashscreeen/assets.dart';
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
                height: 400,
                decoration: BoxDecoration(
                    color: Colors.yellow,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25),
                      topRight: Radius.circular(25),
                    )),
                child: Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: Column(children: [
                    Row(children: [
                      Text(
                        'create your new account ',
                        style: AppTextStyles.poppinsSemiBold20,
                      ),
                      Spacer(),
                      Icon(Icons.close)
                    ]),
                    Padding(
                      padding: const EdgeInsets.only(top: 15.0),
                      child: Row(children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 35),
                          child: Container(
                              height: 39,
                              width: 150,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(30),
                                  border: Border.all(
                                      width: 1, color: Colors.black)),
                              child: Center(child: Text('data'))),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 40.0,
                          ),
                          child: Container(
                              height: 39,
                              width: 150,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(30),
                                  border: Border.all(
                                      width: 1, color: Colors.black)),
                              child: Center(child: Text('data'))),
                        ),
                      ]),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 25.0),
                      child: TextFormField(
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.black,
                            ),
                            borderRadius: BorderRadius.circular(30),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.black,
                            ),
                            borderRadius: BorderRadius.circular(30),
                          ),
                          labelText: 'Name',
                          labelStyle: AppTextStyles.poppinsRegular16,
                        ),
                        style: AppTextStyles.poppinsRegular16,
                      ),
                    ),
                  ]),
                ),
              ),
            ],
          )
        ]));
  }
}
