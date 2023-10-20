import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:logon/pages/onboarding/widgets/onboarding_controls.dart';

import 'register_form.dart';

class Body extends StatelessWidget {
  const Body({
    super.key,
  });

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
                  textStyle: TextStyle(
                fontSize: 18,
              )),
            ),
            SizedBox(
              height: 20,
            ),
            RegistrationForm(),
          ],
        ),
      ),
    );
  }
}
