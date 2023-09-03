import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ResetPasswordScreen extends StatefulWidget {
  const ResetPasswordScreen({super.key});

  @override
  State<ResetPasswordScreen> createState() => _ResetPasswordScreenState();
}

class _ResetPasswordScreenState extends State<ResetPasswordScreen> {
  TextEditingController _phoneNumberController = TextEditingController();
  String phoneNumber = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF8F8F8),
      appBar: AppBar(
        title: Text(
          'Reset Password',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Color(0xffF8F8F8),
        elevation: 0,
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 20, left: 10, right: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Reset Password',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.w700),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
                'Enter your registered phone number below to receive password reset instruction'),
            SizedBox(
              height: 25,
            ),
            Container(
              height: 50,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: TextFormField(
                controller: _phoneNumberController,
                decoration: InputDecoration(
                  hintText: 'Email or Phone Number',
                  errorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: BorderSide(width: 2, color: Color(0xffD1D1D6)),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: BorderSide(width: 2, color: Color(0xffD1D1D6)),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: BorderSide(width: 2, color: Color(0xffD1D1D6)),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  phoneNumber = _phoneNumberController.text;
                });
              },
              child: Container(
                  height: 50,
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                      color: Color(0xFFFFA71E),
                      borderRadius: BorderRadius.circular(5)),
                  child: Center(
                      child: Text(
                    'Send Verification Code',
                    style: TextStyle(
                        fontSize: 17,
                        color: Colors.white,
                        fontWeight: FontWeight.w500),
                  ))),
            ),
          ],
        ),
      ),
    );
  }
}
