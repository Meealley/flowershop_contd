import 'package:logon/pages/login/login_page.dart';
import 'package:logon/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textSelectionTheme: const TextSelectionThemeData(
            selectionColor: AppConst.kGreen,
            cursorColor: AppConst.kGreen,
            selectionHandleColor: AppConst.kGreen),
        inputDecorationTheme: InputDecorationTheme(
            floatingLabelBehavior: FloatingLabelBehavior.auto,
            floatingLabelStyle: GoogleFonts.epilogue(
                textStyle: const TextStyle(fontSize: 20, color: AppConst.kGreen)),
            isCollapsed: true,
            alignLabelWithHint: true,
            enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: AppConst.kGreen),
              borderRadius: BorderRadius.circular(12),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: AppConst.kGreen),
              borderRadius: BorderRadius.circular(12),
            ),
            errorBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: AppConst.kRed),
              borderRadius: BorderRadius.circular(12),
            ),
            focusedErrorBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: AppConst.kRed),
              borderRadius: BorderRadius.circular(12),
            ),
            errorStyle:
                GoogleFonts.epilogue(textStyle: const TextStyle(fontSize: 14))),
      ),
      title: "Flower Shop",
      home: const LoginPage(),
    );
  }
}
