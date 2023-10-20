import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:logon/pages/login/widget/login_register.dart';

import 'login_form.dart';

class Body extends StatefulWidget {
  const Body({
    super.key,
  });

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _emailController.dispose();
    _passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(13),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 2,
            ),
            Text(
              "Welcome Back,👋🏻",
              style: GoogleFonts.epilogue(
                  textStyle: const TextStyle(
                      fontSize: 25, fontWeight: FontWeight.bold)),
            ),
            const SizedBox(
              height: 12,
            ),
            Text(
              "Log in to start using your Petals Account",
              style: GoogleFonts.epilogue(
                textStyle: const TextStyle(
                  fontSize: 15,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            LoginForm(
              // onSaved: ,
              formKey: _formKey,
              emailController: _emailController,
              passwordController: _passwordController,
            ),
            const Spacer(),
            const LogRegister(),
            // ForgotpasswordLabel()
          ],
        ),
      ),
    );
  }
}
