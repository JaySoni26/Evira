import 'package:flutter/material.dart';
import 'package:evira_mark_2/Constraints.dart';

class Login_Screen extends StatelessWidget {
  const Login_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            //1st-Logo
            Center(child: kLogoBig),
          ],
        ),
      ),
    );
  }
}
