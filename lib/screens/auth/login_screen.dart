import 'package:flutter/material.dart';
import 'package:test/nav_bar.dart';
import 'package:test/screens/auth/sign_up.dart';
import 'package:test/widget/custom_button.dart';
import 'package:test/widget/custom_text_feild.dart';

class LogInScreen extends StatelessWidget {
  const LogInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                Image.asset(
                  "asset/images/secure-login/pana.png",
                  height: 200,
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "Hello Again!",
                  style: TextStyle(fontSize: 30),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text("Hi! Welcome back, you've been missed",
                    style: TextStyle(fontSize: 20, color: Colors.grey)),
                const SizedBox(
                  height: 20,
                ),
                const SizedBox(
                  height: 20,
                ),
                const CustomTextField(
                    hintText: "Enter Your Email",
                    prefixIcon: Icon(Icons.email_outlined)),
                const SizedBox(
                  height: 20,
                ),
                const CustomTextField(
                    hintText: "enter your password",
                    suffixIcon: Icon(Icons.remove_red_eye_outlined),
                    prefixIcon: Icon(Icons.lock_outline)),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'forget password',
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                      ),
                    )
                  ],
                ),
                CastomButtonWidget(
                    fontSize: 20,
                    title: "Sign In",
                    backgroundColor: const Color(0xff35a072),
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (context){return NavBar();}));
                    }),
                const Row(
                  children: [
                    Expanded(
                      child: Divider(
                        indent: 10,
                        endIndent: 10,
                        thickness: 2,
                      ),
                    ),
                    Text("or sign in with"),
                    Expanded(
                      child: Divider(
                        indent: 10,
                        endIndent: 10,
                        thickness: 2,
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                        width: 60,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(30)),
                        child: Image.asset("asset/images/google_logo.png")),
                    const SizedBox(
                      width: 20,
                    ),
                    Container(
                        width: 60,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(30)),
                        child: Image.asset("asset/images/apple_logo.png")),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("don't have an account?"),
                    TextButton(
                        onPressed: () {
                          Navigator.of(context)
                              .push(MaterialPageRoute(builder: (context) {
                            return SignUp();
                          }));
                        },
                        child: const Text(
                          "Sign up",
                          style: TextStyle(color: Colors.green),
                        ))
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
