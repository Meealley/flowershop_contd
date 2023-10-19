import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:logon/theme/app_colors.dart';

import 'widget/body.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: AppConst.kGreen,
          centerTitle: true,
          title: Text(
            "Reset Password",
            style: GoogleFonts.epilogue(fontSize: 18),
          ),
        ),
        body: const body(),
      ),
    );
  }
}
