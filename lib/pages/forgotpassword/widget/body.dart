import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'reset_passwd_form.dart';

class body extends StatefulWidget {
  const body({
    super.key,
  });

  @override
  State<body> createState() => _bodyState();
}

class _bodyState extends State<body> {
  final GlobalKey<FormState> _resetKey = GlobalKey<FormState>();
  final TextEditingController _resetController = TextEditingController();

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _resetController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: Text(
              "Please enter your email address to request a password reset",
              style: GoogleFonts.epilogue(
                  textStyle: const TextStyle(fontSize: 18)),
            ),
          ),
          const SizedBox(
            height: 23,
          ),
          ResetPasswordForm(
            resetController: _resetController,
            resetKey: _resetKey,
          )
        ],
      ),
    );
  }
}
