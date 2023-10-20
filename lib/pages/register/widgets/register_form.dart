import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:logon/pages/onboarding/widgets/onboarding_controls.dart';
import 'package:logon/theme/app_colors.dart';

class RegistrationForm extends StatefulWidget {
  final TextEditingController fNameController;
  final TextEditingController lNameController;
  final TextEditingController emailController;
  final TextEditingController passwordController;
  final TextEditingController confirmPasswordController;
  final GlobalKey<FormState> registerKey;

  const RegistrationForm({
    super.key,
    required this.fNameController,
    required this.lNameController,
    required this.registerKey,
    required this.emailController,
    required this.passwordController,
    required this.confirmPasswordController,
  });

  @override
  State<RegistrationForm> createState() => _RegistrationFormState();
}

class _RegistrationFormState extends State<RegistrationForm> {
  String _firstName = "";
  String _lastName = "";
  String _email = "";
  String _password = "";
  String _confirmPassword = "";
  bool _obscureText = false;
  bool _obscureText2 = false;

  @override
  Widget build(BuildContext context) {
    return Form(
        key: widget.registerKey,
        child: Column(
          children: [
            TextFormField(
              controller: widget.fNameController,
              validator: (fname) {
                if (fname == null || fname.isEmpty) {
                  return "Please enter your first name";
                }
                return null;
              },
              decoration: InputDecoration(
                labelText: "First Name",
                hintText: "Enter your first name",
                hintStyle: GoogleFonts.epilogue(
                  textStyle: const TextStyle(
                    fontSize: 17,
                  ),
                ),
                labelStyle: GoogleFonts.epilogue(
                  textStyle:
                      const TextStyle(fontSize: 17, color: AppConst.kGreen),
                ),
              ),
              onSaved: (fname) {
                setState(() {
                  _firstName = widget.fNameController.text = fname!;
                });
              },
              style: GoogleFonts.epilogue(
                  textStyle: const TextStyle(fontSize: 18)),
            ),
            SizedBox(
              height: 20,
            ),
            TextFormField(
              controller: widget.lNameController,
              validator: (lname) {
                if (lname == null || lname.isEmpty) {
                  return "Please enter your last name";
                }
                return null;
              },
              decoration: InputDecoration(
                labelText: "Last Name",
                hintText: "Enter your last name",
                hintStyle: GoogleFonts.epilogue(
                  textStyle: const TextStyle(
                    fontSize: 17,
                  ),
                ),
                labelStyle: GoogleFonts.epilogue(
                  textStyle:
                      const TextStyle(fontSize: 17, color: AppConst.kGreen),
                ),
              ),
              onSaved: (lname) {
                setState(() {
                  _lastName = widget.lNameController.text = lname!;
                });
              },
              style: GoogleFonts.epilogue(
                  textStyle: const TextStyle(fontSize: 18)),
            ),
            SizedBox(
              height: 20,
            ),
            TextFormField(
              controller: widget.emailController,
              validator: (email) {
                if (email == null || email.isEmpty) {
                  return "Email is required";
                } else if (!EmailValidator.validate(email)) {
                  return "Email is not valid";
                }
                return null;
              },
              decoration: InputDecoration(
                labelText: "Email address",
                hintText: "Enter your email address",
                hintStyle: GoogleFonts.epilogue(
                  textStyle: const TextStyle(
                    fontSize: 17,
                  ),
                ),
                labelStyle: GoogleFonts.epilogue(
                  textStyle:
                      const TextStyle(fontSize: 17, color: AppConst.kGreen),
                ),
              ),
              onSaved: (email) {
                setState(() {
                  _email = widget.emailController.text = email!;
                });
              },
              style: GoogleFonts.epilogue(
                  textStyle: const TextStyle(fontSize: 18)),
            ),
            SizedBox(
              height: 20,
            ),
            TextFormField(
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "Please enter a valid value";
                } else if (value.length < 6) {
                  return "Password must be at least 6 characters";
                } else if (value != widget.confirmPasswordController.text) {
                  return "Password does not match";
                }
                return null;
              },
              decoration: InputDecoration(
                labelText: "Password",
                hintText: "Minimum of 8 characters",
                hintStyle: GoogleFonts.epilogue(
                  textStyle: const TextStyle(
                    fontSize: 17,
                  ),
                ),
                labelStyle: GoogleFonts.epilogue(
                  textStyle:
                      const TextStyle(fontSize: 17, color: AppConst.kGreen),
                ),
                suffixIconConstraints: const BoxConstraints(
                  minHeight: 40,
                  maxHeight: 40,
                  minWidth: 40,
                  maxWidth: 40,
                ),
                suffixIcon: GestureDetector(
                  onTap: () {
                    setState(() {
                      _obscureText = !_obscureText;
                    });
                    print("Suffix icons");
                  },
                  child: _obscureText
                      ? const Icon(
                          Icons.visibility,
                          color: AppConst.kGreen,
                        )
                      : const Icon(
                          Icons.visibility_off,
                          color: AppConst.kGreen,
                        ),
                ),
                suffixStyle: const TextStyle(color: AppConst.kGreen),
              ),
              obscureText: _obscureText,
            ),
            SizedBox(
              height: 20,
            ),
            TextFormField(
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "Please enter a valid value";
                } else if (value != widget.passwordController.text) {
                  return "Password does not match!";
                }
                return null;
              },
              decoration: InputDecoration(
                labelText: "Confirm Password",
                hintText: "Confirm Password",
                hintStyle: GoogleFonts.epilogue(
                  textStyle: const TextStyle(
                    fontSize: 17,
                  ),
                ),
                labelStyle: GoogleFonts.epilogue(
                  textStyle:
                      const TextStyle(fontSize: 17, color: AppConst.kGreen),
                ),
                suffixIconConstraints: const BoxConstraints(
                  minHeight: 40,
                  maxHeight: 40,
                  minWidth: 40,
                  maxWidth: 40,
                ),
                suffixIcon: GestureDetector(
                  onTap: () {
                    setState(() {
                      _obscureText2 = !_obscureText2;
                    });
                    print("Suffix icons");
                  },
                  child: _obscureText2
                      ? const Icon(
                          Icons.visibility,
                          color: AppConst.kGreen,
                        )
                      : const Icon(
                          Icons.visibility_off,
                          color: AppConst.kGreen,
                        ),
                ),
                suffixStyle: const TextStyle(color: AppConst.kGreen),
              ),
              obscureText: _obscureText2,
            ),
            SizedBox(
              height: 30,
            ),
            // Spacer(),
            SizedBox(
              width: double.infinity,
              child: CustomButton(
                  onPressed: () {
                    if (widget.registerKey.currentState!.validate()) {
                      widget.registerKey.currentState!.save();
                      print(
                        "registeration firstname : $_firstName, lastname : $_lastName, email : $_email, password : $_password, confirm : $_confirmPassword",
                      );
                    }
                  },
                  title: "Register"),
            )
          ],
        ));
  }
}
