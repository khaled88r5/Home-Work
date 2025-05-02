import 'package:create_account/assets.dart';
import 'package:create_account/cubit/account_cubit.dart';
import 'package:create_account/cubit/account_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CreateAccount extends StatefulWidget {
  const CreateAccount({Key? key}) : super(key: key);

  @override
  State<CreateAccount> createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  String firstName = '';
  String lastName = '';
  String email = '';
  String password = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Create Account")),
      body: BlocBuilder<CreateAccountCubit, CreateAccountState>(
        builder: (context, state) {
          return Stack(
            children: [
              Image.asset(
                Assets.assetsGroup7,
                fit: BoxFit.cover,
                width: double.infinity,
                height: 300,
              ),
              Column(
                children: [
                  const SizedBox(height: 280),
                  Container(
                    width: double.infinity,
                    height: 550,
                    decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 228, 228, 228),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(25),
                        topRight: Radius.circular(25),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 20.0),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              SizedBox(
                                width: 150,
                                child: TextField(
                                  onChanged:
                                      (value) =>
                                          setState(() => firstName = value),
                                  decoration: InputDecoration(
                                    hintText: 'firstname',
                                    contentPadding: const EdgeInsets.symmetric(
                                      horizontal: 16,
                                      vertical: 14,
                                    ),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(30),
                                      borderSide: const BorderSide(
                                        color: Colors.orange,
                                        width: 2,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 150,
                                child: TextField(
                                  onChanged:
                                      (value) =>
                                          setState(() => lastName = value),
                                  decoration: InputDecoration(
                                    hintText: 'lastname',
                                    contentPadding: const EdgeInsets.symmetric(
                                      horizontal: 16,
                                      vertical: 14,
                                    ),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(30),
                                      borderSide: const BorderSide(
                                        color: Colors.orange,
                                        width: 2,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 60),
                          SizedBox(
                            width: 320,
                            child: TextField(
                              onChanged:
                                  (value) => setState(() => email = value),
                              decoration: InputDecoration(
                                hintText: 'account',
                                contentPadding: const EdgeInsets.symmetric(
                                  horizontal: 16,
                                  vertical: 14,
                                ),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30),
                                  borderSide: const BorderSide(
                                    color: Colors.orange,
                                    width: 2,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(height: 60),
                          SizedBox(
                            width: 320,
                            child: TextField(
                              onChanged:
                                  (value) => setState(() => password = value),
                              decoration: InputDecoration(
                                hintText: 'password',
                                contentPadding: const EdgeInsets.symmetric(
                                  horizontal: 16,
                                  vertical: 14,
                                ),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30),
                                  borderSide: const BorderSide(
                                    color: Colors.orange,
                                    width: 2,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(height: 20),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              TextButton(
                                onPressed: () {
                                  var cubit =
                                      BlocProvider.of<CreateAccountCubit>(
                                        context,
                                      );
                                  cubit.valiate(
                                    fname: firstName,
                                    lname: lastName,
                                    account: email,
                                    password: password,
                                  );
                                },
                                style: TextButton.styleFrom(
                                  foregroundColor: Colors.white,
                                  backgroundColor: Colors.deepOrange,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                ),
                                child: const Text('Create Account'),
                              ),
                              const SizedBox(width: 20),
                              Container(
                                child:
                                    state is CreateAccountSuccess
                                        ? const Text(
                                          'account created successfully',
                                          style: TextStyle(color: Colors.green),
                                        )
                                        : state is CreateAccountError
                                        ? const Text(
                                          'all fieles are required',
                                          style: TextStyle(color: Colors.red),
                                        )
                                        : state is CreateAccountLoading
                                        ? const CircularProgressIndicator(
                                          color: Colors.deepOrange,
                                        )
                                        : null,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          );
        },
      ),
    );
  }
}
