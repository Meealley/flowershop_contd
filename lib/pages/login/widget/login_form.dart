import 'package:email_validator/email_validator.dart';
import 'package:logon/pages/login/widget/forgot_password.dart';
import 'package:logon/pages/login/widget/social_login.dart';
import 'package:logon/pages/onboarding/widgets/onboarding_controls.dart';
import 'package:logon/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginForm extends StatefulWidget {
  final TextEditingController emailController;
  final TextEditingController passwordController;
  final GlobalKey<FormState> formKey;
  // final Function(String?) onSaved;

  const LoginForm({
    super.key,
    required this.emailController,
    required this.passwordController,
    required this.formKey,
  });

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  bool _obscureText = false;
  // final Function(String?) onSaved;
  String _email = "";
  String _password = "";

  @override
  Widget build(BuildContext context) {
    return Expanded(
        flex: 100,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: Form(
              key: widget.formKey,
              child: Column(
                children: [
                  TextFormField(
                    controller: widget.emailController,
                    validator: (email) {
                      if (email == null || email.isEmpty) {
                        return "Please enter a valid email";
                      } else if (!EmailValidator.validate(email)) {
                        return "Your email is not valid";
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      labelText: "Email address",
                      hintText: "Enter your email address",
                      labelStyle: GoogleFonts.epilogue(
                        textStyle: const TextStyle(
                            fontSize: 17, color: AppConst.kGreen),
                      ),
                    ),
                    onSaved: (email) {
                      setState(() {
                        _email = widget.emailController.text = email!;
                      });
                    },
                    keyboardType: TextInputType.emailAddress,
                    style: GoogleFonts.epilogue(
                        textStyle: const TextStyle(fontSize: 18)),
                  ),
                  const SizedBox(
                    height: 23,
                  ),
                  TextFormField(
                    controller: widget.passwordController,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Please enter a valid value";
                      } else if (value.length < 6) {
                        return "Password must be at least 6 characters";
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      labelText: "Password",
                      hintText: "Enter your password",
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
                      labelStyle: GoogleFonts.epilogue(
                        textStyle: const TextStyle(
                            fontSize: 17, color: AppConst.kGreen),
                      ),
                    ),
                    keyboardType: TextInputType.emailAddress,
                    obscureText: _obscureText,
                    style: GoogleFonts.epilogue(
                        textStyle: const TextStyle(fontSize: 18)),
                    onSaved: (password) {
                      setState(() {
                        _password = widget.passwordController.text = password!;
                      });
                    },
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  const ForgotpasswordLabel(),
                  const SizedBox(
                    height: 24,
                  ),

                  // Button starts here
                  SizedBox(
                    height: 55,
                    width: double.infinity,
                    child: CustomButton(
                        onPressed: () {
                          if (widget.formKey.currentState!.validate()) {
                            widget.formKey.currentState!.save();
                            print(
                                "login values Email: $_email and Password : $_password");
                          }
                        },
                        title: "Login"),
                  ),
                  const SizedBox(
                    height: 28,
                  ),
                  //social media starts here
                  const SocialMedia(),
                ],
              ),
            ),
          ),
        ));
  }
}
