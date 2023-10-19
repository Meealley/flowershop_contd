import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:logon/pages/onboarding/widgets/onboarding_controls.dart';
import 'package:logon/theme/app_colors.dart';

class ResetPasswordForm extends StatefulWidget {
  final TextEditingController resetController;
  final GlobalKey<FormState> resetKey;

  const ResetPasswordForm({
    super.key,
    required this.resetController,
    required this.resetKey,
  });

  @override
  State<ResetPasswordForm> createState() => _ResetPasswordFormState();
}

class _ResetPasswordFormState extends State<ResetPasswordForm> {
  String _resetEmail = '';

  @override
  Widget build(BuildContext context) {
    return Form(
        key: widget.resetKey,
        child: Column(
          children: [
            TextFormField(
              controller: widget.resetController,
              validator: (email) {
                if (email == null || email.isEmpty) {
                  return "Email address is required";
                } else if (!EmailValidator.validate(email)) {
                  return "Email address is invalid";
                }
                return null;
              },
              decoration: InputDecoration(
                labelText: "Email address",
                hintText: "Enter your email address",
                hintStyle: GoogleFonts.epilogue(),
                labelStyle: GoogleFonts.epilogue(
                  textStyle:
                      const TextStyle(fontSize: 17, color: AppConst.kGreen),
                ),
              ),
              onSaved: (email) {
                setState(() {
                  _resetEmail = widget.resetController.text = email!;
                });
              },
              keyboardType: TextInputType.emailAddress,
              style: GoogleFonts.epilogue(
                  textStyle: const TextStyle(fontSize: 18)),
            ),
            const SizedBox(
              height: 32,
            ),
            SizedBox(
              width: double.infinity,
              child: CustomButton(
                  onPressed: () {
                    if (widget.resetKey.currentState!.validate()) {
                      widget.resetKey.currentState!.save();
                      print("Reset email : $_resetEmail");
                    }
                  },
                  title: "Verify Email"),
            )
          ],
        ));
  }
}
