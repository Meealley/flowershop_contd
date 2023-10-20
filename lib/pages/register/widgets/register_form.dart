import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:logon/theme/app_colors.dart';

class RegistrationForm extends StatefulWidget {
  const RegistrationForm({
    super.key,
  });

  @override
  State<RegistrationForm> createState() => _RegistrationFormState();
}

class _RegistrationFormState extends State<RegistrationForm> {
  @override
  Widget build(BuildContext context) {
    return Form(
        child: Column(
      children: [
        TextFormField(
          decoration: InputDecoration(
            labelText: "First Name",
            hintText: "Enter your first name",
            hintStyle: GoogleFonts.epilogue(
              textStyle: const TextStyle(
                fontSize: 17,
              ),
            ),
            labelStyle: GoogleFonts.epilogue(
              textStyle: const TextStyle(fontSize: 17, color: AppConst.kGreen),
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        TextFormField(
          decoration: InputDecoration(
            labelText: "Last Name",
            hintText: "Enter your last name",
            hintStyle: GoogleFonts.epilogue(
              textStyle: const TextStyle(
                fontSize: 17,
              ),
            ),
            labelStyle: GoogleFonts.epilogue(
              textStyle: const TextStyle(fontSize: 17, color: AppConst.kGreen),
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        TextFormField(
          decoration: InputDecoration(
            labelText: "Email address",
            hintText: "Enter your email address",
            hintStyle: GoogleFonts.epilogue(
              textStyle: const TextStyle(
                fontSize: 17,
              ),
            ),
            labelStyle: GoogleFonts.epilogue(
              textStyle: const TextStyle(fontSize: 17, color: AppConst.kGreen),
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        TextFormField(
          decoration: InputDecoration(
            labelText: "Password",
            hintText: "Minimum of 6 characters",
            hintStyle: GoogleFonts.epilogue(
              textStyle: const TextStyle(
                fontSize: 17,
              ),
            ),
            labelStyle: GoogleFonts.epilogue(
              textStyle: const TextStyle(fontSize: 17, color: AppConst.kGreen),
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        TextFormField(
          decoration: InputDecoration(
            labelText: "Confirm Password",
            hintText: "Confirm Password",
            hintStyle: GoogleFonts.epilogue(
              textStyle: const TextStyle(
                fontSize: 17,
              ),
            ),
            labelStyle: GoogleFonts.epilogue(
              textStyle: const TextStyle(fontSize: 17, color: AppConst.kGreen),
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
      ],
    ));
  }
}
