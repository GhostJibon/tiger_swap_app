import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Logout extends StatefulWidget {
  @override
  State<Logout> createState() => _LogoutState();
}

class _LogoutState extends State<Logout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Logout',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Container(
        height: double.maxFinite,
        width: double.maxFinite,
        child: Center(
          child: GestureDetector(
            onTap: () {
              onPressed:
              showMenu();
            },
            child: Container(
              child: Center(
                  child: Text(
                'Log Out',
                style: TextStyle(color: Colors.white),
              )),
              height: 30,
              width: 80,
              color: Colors.black,
            ),
          ),
        ),
      ),
    );
  }
// }

  showMenu() {
    showModalBottomSheet(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(16.0),
            topRight: Radius.circular(16.0),
          ),
        ),
        context: context,
        builder: (BuildContext context) {
          return Padding(
            padding: EdgeInsets.only(left: 20, right: 20),
            child: Column(
              children: [
                SizedBox(
                  height: 80,
                ),
                Image.asset(''),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Are you sure?',
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.w700),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 50, right: 50),
                  child: Text(
                    'You will back to early app if you click the logout button',
                    maxLines: 2,
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
                      width: double.maxFinite,
                      decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.1),
                          borderRadius: BorderRadius.circular(5)),
                      child: Center(
                          child: Text(
                        'Log out',
                        style: TextStyle(
                            fontSize: 17,
                            color: Color(0xffFF0944),
                            fontWeight: FontWeight.w500),
                      ))),
                ),
                SizedBox(
                  height: 20,
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                      height: 50,
                      width: double.maxFinite,
                      decoration: BoxDecoration(
                          color: Color(0xFFFFA71E),
                          borderRadius: BorderRadius.circular(5)),
                      child: Center(
                          child: Text(
                        'Cancel',
                        style: TextStyle(
                            fontSize: 17,
                            color: Colors.white,
                            fontWeight: FontWeight.w500),
                      ))),
                ),
              ],
            ),
          );
        });
  }
}
