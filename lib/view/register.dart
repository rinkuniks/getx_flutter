import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'login.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff154C79),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          child: Column(
            children: [
              Container(
                  margin: const EdgeInsets.all(20),
                  alignment: Alignment.center,
                  child: const Text(
                    'Register New User',
                    style: TextStyle(fontSize: 30, color: Colors.white),
                  )),
              const SizedBox(
                height: 40,
              ),
              const TextField(
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  border: OutlineInputBorder(),
                  hintText: 'Enter a username',
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const TextField(
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  border: OutlineInputBorder(),
                  hintText: 'Enter you name',
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const TextField(
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  border: OutlineInputBorder(),
                  hintText: 'Enter your email',
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const TextField(
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  border: OutlineInputBorder(),
                  hintText: 'Enter your mobile number',
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const TextField(
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  border: OutlineInputBorder(),
                  hintText: 'Enter your password',
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const TextField(
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  border: OutlineInputBorder(),
                  hintText: 'Confirm password',
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              InkWell(
                onTap: (){
                  ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(backgroundColor: Colors.green,
                          content: Text('Registered Successfully')));
                  Get.to(const LoginView());
                },
                child: Container(
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    color: Colors.white,
                  ),
                  height: 40,
                  width: 120,
                  child: const Center(
                    child: Text(
                      'Register',
                      style: TextStyle(fontSize: 20, color: Color(0xff154C79)),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              InkWell(
                  onTap: () {
                    Get.to(const LoginView());
                  },
                  child: const Text(
                    'Already have an account? Login',
                    style: TextStyle(color: Colors.white),
                  )),
            ],
          ),
        ),
      )),
    );
  }
}
