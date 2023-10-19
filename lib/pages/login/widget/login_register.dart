import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:logon/theme/app_colors.dart';

class LogRegister extends StatelessWidget {
  const LogRegister({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        children: [
          TextSpan(
            text: 'Don\'t have an account?',
            style: GoogleFonts.epilogue(
              textStyle: TextStyle(fontSize: 15, color: AppConst.kBkDark),
            ),
          ),
          TextSpan(
            text: 'Register',
            style: GoogleFonts.epilogue(
              textStyle: TextStyle(fontSize: 15, color: AppConst.kGreen),
            ),
          ),
        ],
      ),
    );
  }
}
