import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test/nav_bar.dart';
import 'package:test/screens/auth/login_screen.dart';
import 'package:test/widget/custom_button.dart';
import 'package:test/widget/custom_text_feild.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool _isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Create an account"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 20),
              const Text(
                "Fill your information below or register with your social account",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Color(0xff6B6B6B),
                    fontWeight: FontWeight.w400,
                    fontSize: 18),
              ),
              const SizedBox(height: 20),
              const CustomTextField(
                  hintText: "Full Name",
                  prefixIcon: Icon(Icons.person_2_outlined)),
              const SizedBox(height: 20),
              const CustomTextField(
                  hintText: "Phone Number",
                  prefixIcon: Icon(Icons.phone_outlined)),
              const SizedBox(height: 20),
              const CustomTextField(
                  hintText: "Enter a valid Email",
                  prefixIcon: Icon(Icons.email_outlined)),
              const SizedBox(height: 20),
              const CustomTextField(
                  hintText: "Enter your password",
                  suffixIcon: Icon(Icons.remove_red_eye_outlined),
                  prefixIcon: Icon(Icons.lock_outline)),
              ListTile(
                leading: Checkbox(
                  activeColor: Colors.green,
                  value: _isChecked,
                  onChanged: (bool? value) {
                    setState(() {
                      _isChecked = value!;
                    });
                  },
                ),
                title: Row(
                  children: [
                    const Text("Agree with"),
                    TextButton(
                        onPressed: () {},
                        child: const Text("Terms&condition",
                            style: TextStyle(
                              color: Colors.green,
                            ))),
                  ],
                ),
              ),
              CastomButtonWidget(
                  fontSize: 20,
                  title: "Sign Up",
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
                          return const LogInScreen();
                        }));
                      },
                      child: const Text(
                        "Sign In",
                        style: TextStyle(color: Colors.green),
                      ))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
