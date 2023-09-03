import 'package:flutter/material.dart';
import 'package:tiger_app/screens/error_screen/error.dart';
import 'package:tiger_app/screens/log_out/log_out.dart';
import 'package:tiger_app/screens/new_pass/newpassword.dart';
import 'package:tiger_app/screens/otp/otp.dart';
import 'package:tiger_app/screens/reset_pass/resetpassword.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: OtpScreen(),
    );
  }
}
