import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:logon/theme/app_colors.dart';

import 'widgets/body.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: AppConst.kGreen,
          title: Text(
            "Sign Up",
            style: GoogleFonts.epilogue(textStyle: const TextStyle(fontSize: 20)),
          ),
        ),
        body: const Body(),
      ),
    );
  }
}
