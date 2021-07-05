import 'package:catalog/Screens/home/homepage.dart';
import 'package:catalog/constant.dart';
import 'package:flutter/material.dart';

class LoginBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
      children: [
        SizedBox(height: 30),
        Text(
          "SIGN IN",
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w700,
            color: Colors.black,
          ),
        ),
        SizedBox(height: 30),
        Container(
          height: 250,
          width: 250,
          child: Image.asset(
              "assets/images/secure_login.png",
              fit: BoxFit.contain
              ),
        ),
        SizedBox(height: 30,),
        Padding(
                padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                child: Column(
                  children: [
                    InputTextField(hint: "Username"),
                    SizedBox(height: 10),
                    InputTextField(hint: "Password"),
                    SizedBox(height: 15),
                    Container(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, HomePage.routeName);
                        },
                        child: Text("LOGIN"),
                        style: TextButton.styleFrom(
                            backgroundColor: loginback,
                            padding: EdgeInsets.symmetric(vertical: 17)),
                      ),
                    )
                  ],
                ),
              ),
      ],
    ));
  }
}

class InputTextField extends StatelessWidget {
  const InputTextField({
    Key key,
    @required this.hint,
  }) : super(key: key);

  final String hint;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: false,
      decoration: InputDecoration(
          hintText: hint,
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: focusedColor),
            borderRadius: BorderRadius.circular(20),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: enableColor),
            borderRadius: BorderRadius.circular(20),
          ),
          filled: true,
          hintStyle: TextStyle(color: Colors.black, fontSize: 12),
          fillColor: Colors.white,
          focusColor: Colors.white),
    );
  }
}
