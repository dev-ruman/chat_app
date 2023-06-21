import 'package:chat_app/components/mega_button.dart';
import 'package:chat_app/components/text_field.dart';
import 'package:chat_app/services/auth_service.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';

class LoginPage extends StatefulWidget {
  final void Function()? onTap;
  const LoginPage({super.key, required this.onTap});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passWordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    void signIn() async {
      final authService = Provider.of<AuthService>(context, listen: false);
      try {
        await authService.signInWithEmailAndPassword(
            emailController.text, passWordController.text);
      } catch (e) {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            behavior: SnackBarBehavior.floating,
            content: Container(
              decoration: BoxDecoration(color: Colors.grey[900]),
              child: Text(
                e.toString(),
                style: TextStyle(color: Colors.white),
              ),
            )));
      }
    }

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
            const SizedBox(
              height: 25,
            ),
            MegaButton(
              ontap: signIn,
              title: 'Sign in',
              color: Colors.grey.shade900,
              textColor: Colors.white,
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Not a member ?'),
                const SizedBox(
                  width: 4,
                ),
                GestureDetector(
                  onTap: widget.onTap,
                  child: Text(
                    'Sign up',
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
