import 'package:chat_app/components/mega_button.dart';
import 'package:chat_app/components/text_field.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class SignUpPage extends StatefulWidget {
  final void Function()? onTap;
  const SignUpPage({super.key, this.onTap});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passWordController = TextEditingController();
  TextEditingController confirmPassWordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    void signUp() {}
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
                height: 150,
                width: 150,
                child: Lottie.asset('asset/animation/box_chat.json')),
            SizedBox(
              height: 15,
            ),
            CustomTextField(
                obsecureText: false,
                hintText: 'Enter email',
                controller: emailController),
            SizedBox(
              height: 15,
            ),
            CustomTextField(
                obsecureText: true,
                hintText: 'Enter password',
                controller: passWordController),
            SizedBox(
              height: 15,
            ),
            CustomTextField(
                obsecureText: true,
                hintText: 'Confirm password',
                controller: passWordController),
            SizedBox(
              height: 25,
            ),
            MegaButton(
              ontap: signUp,
              title: 'Sign up',
              color: Colors.grey.shade900,
              textColor: Colors.white,
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Already a member ?'),
                const SizedBox(
                  width: 4,
                ),
                GestureDetector(
                  onTap: widget.onTap,
                  child: Text(
                    'Sign in',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            )
          ],
        ),
      )),
    );
  }
}
