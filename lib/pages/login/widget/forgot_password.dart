import 'package:logon/pages/forgotpassword/forgot_password.dart';
import 'package:logon/pages/login/widget/remember_me.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ForgotpasswordLabel extends StatelessWidget {
  const ForgotpasswordLabel({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => const ForgotPassword(),
          ),
        );
        print("Clicked on the Forgot password label");
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const RememberMe(),
          Text(
            "Forgot password?",
            style:
                GoogleFonts.epilogue(textStyle: const TextStyle(fontSize: 16)),
          )
        ],
      ),
    );
  }
}
