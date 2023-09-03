import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ErrorScreen extends StatefulWidget {
  @override
  State<ErrorScreen> createState() => _ErrorScreenState();
}

class _ErrorScreenState extends State<ErrorScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF8F8F8),
      appBar: AppBar(
        title: Text(
          'New Password',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Color(0xffF8F8F8),
        elevation: 0,
      ),
      body: Column(
        children: [
          SizedBox(
            height: 80,
          ),
          Image.asset(''),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: EdgeInsets.only(left: 50, right: 50),
            child: Text(
              'Oops! Something Not Right',
              maxLines: 2,
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 28,
                  color: Colors.black,
                  fontWeight: FontWeight.w700),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: EdgeInsets.only(left: 50, right: 50),
            child: Text(
              'The cause might be a connection issue, an internet outage, or a comet that has hit our planet.',
              maxLines: 3,
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 15,
                  color: Color(0xff48484A),
                  fontWeight: FontWeight.w400),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          GestureDetector(
            onTap: () {},
            child: Container(
                height: 50,
                width: 200,
                decoration: BoxDecoration(
                    color: Color(0xFFFFA71E),
                    borderRadius: BorderRadius.circular(5)),
                child: Center(
                    child: Text(
                  'Try again',
                  style: TextStyle(
                      fontSize: 17,
                      color: Colors.white,
                      fontWeight: FontWeight.w500),
                ))),
          ),
        ],
      ),
    );
  }
}
