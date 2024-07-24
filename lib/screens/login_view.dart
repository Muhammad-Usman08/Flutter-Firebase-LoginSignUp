import 'package:flutter/material.dart';

// ignore: must_be_immutable
class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  //controllers
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[500],
        title: const Text(
          'Login Page',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
        ),
      ),
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        child: Column(
          children: [
            TextField(
              controller: emailController,
              decoration: const InputDecoration(
                contentPadding: EdgeInsets.only(left: 20, top: 10, bottom: 10),
                hintText: 'Enter email ',
                border: OutlineInputBorder(),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 40, top: 20),
              child: TextField(
                controller: passwordController,
                decoration: const InputDecoration(
                  contentPadding:
                      EdgeInsets.only(left: 20, top: 10, bottom: 10),
                  hintText: 'Enter Password',
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            SizedBox(
              width: 200,
              height: 45,
              child: ElevatedButton(
                  onPressed: () {},
                  style: const ButtonStyle(
                      backgroundColor:
                          MaterialStatePropertyAll(Color(0xff4157FF))),
                  child: const Text(
                    'Login',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.w500),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}