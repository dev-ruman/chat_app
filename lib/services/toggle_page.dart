import 'package:chat_app/pages/login_page.dart';
import 'package:chat_app/pages/signUp_page.dart';
import 'package:flutter/material.dart';

class TogglePage extends StatefulWidget {
  const TogglePage({super.key});

  @override
  State<TogglePage> createState() => _TogglePageState();
}

class _TogglePageState extends State<TogglePage> {
  bool initialPage = true;
  void togglePages() {
    setState(() {
      initialPage = !initialPage;
    });
  }

  @override
  Widget build(BuildContext context) {
    return initialPage
        ? LoginPage(onTap: togglePages)
        : SignUpPage(
            onTap: togglePages,
          );
  }
}
