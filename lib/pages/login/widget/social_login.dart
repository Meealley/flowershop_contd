import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:logon/theme/app_colors.dart';

class SocialMedia extends StatelessWidget {
  const SocialMedia({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "or continue with : ",
          style: GoogleFonts.epilogue(
            textStyle: TextStyle(fontSize: 16, color: AppConst.kBKLight),
          ),
        ),
        SizedBox(
          height: 25,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: TextButton.icon(
                  style: ButtonStyle(
                    shape: MaterialStatePropertyAll(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                          side: BorderSide(
                            color: AppConst.kBKLight,
                          )),
                    ),
                  ),
                  onPressed: () {
                    print("Google clicked");
                  },
                  icon: Image.asset(
                    'assets/images/google.png',
                    width: 40,
                  ),
                  label: Text("Google",
                      style: GoogleFonts.epilogue(
                        textStyle: TextStyle(fontSize: 16, color: Colors.black),
                      ))),
            )
          ],
        )
      ],
    );
  }
}
