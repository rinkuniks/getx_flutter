import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_flutter/view/register.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);

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
                    alignment: Alignment.center,
                    child: const Icon(
                      Icons.ac_unit,
                      size: 250,
                    )),
                const SizedBox(
                  height: 40,
                ),
                const Text(
                  'Username',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
                const SizedBox(
                  height: 10,
                ),
                const TextField(
                  decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    border: OutlineInputBorder(),
                    hintText: 'Enter Username',
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'Password',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
                const SizedBox(
                  height: 10,
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
                  height: 30,
                ),
                InkWell(
                  onTap: (){
                    ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(backgroundColor: Colors.green,
                            content: Text('Logged In Successfully')));
                  },
                  child: Container(
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      color: Colors.white,
                    ),
                    height: 40,
                    width: 90,
                    child: const Center(
                      child: Text(
                        'Login',
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
                      Get.to(const RegisterView());
                    },
                    child: const Text(
                      'Do you have account? SignUp',
                      style: TextStyle(color: Colors.white),
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
