import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'register_form.dart';

class Body extends StatefulWidget {
  const Body({
    super.key,
  });

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  final GlobalKey<FormState> _registerKey = GlobalKey<FormState>();
  final TextEditingController _firstNameController = TextEditingController();
  final TextEditingController _lastNameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _firstNameController.dispose();
    _lastNameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _confirmPasswordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            Text(
              "Create an Account to start trading",
              style: GoogleFonts.epilogue(
                  textStyle: const TextStyle(
                fontSize: 18,
              )),
            ),
            const SizedBox(
              height: 20,
            ),
            RegistrationForm(
              lNameController: _lastNameController,
              fNameController: _firstNameController,
              registerKey: _registerKey,
              emailController: _emailController,
              passwordController: _passwordController,
              confirmPasswordController: _confirmPasswordController,
            ),
          ],
        ),
      ),
    );
  }
}
