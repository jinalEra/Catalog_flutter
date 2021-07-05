import 'package:catalog/Screens/home/homepage.dart';
import 'package:catalog/constant.dart';
import 'package:flutter/material.dart';

class LoginBody extends StatefulWidget {
  @override
  _LoginBodyState createState() => _LoginBodyState();
}

class _LoginBodyState extends State<LoginBody> {
  String name = "";
  bool changebtn = false;

  // validation formkey  | _formkey bcz its private variable
  final _formkey = GlobalKey<FormState>();

  // method for animatation and navigate on homepage
  moveToHome(BuildContext context) async {
    if (_formkey.currentState.validate()) {
      setState(() {
        changebtn = true;
      });
      await Future.delayed(Duration(milliseconds: 500));
      await Navigator.pushNamed(context, HomePage.routeName);
      setState(() {
        changebtn = false;
      });
    }
    // state 1 forward
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Form(
      key: _formkey,
      child: Column(
        children: [
          SizedBox(height: 40),
          Text(
            "SIGN IN",
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w700,
              color: Colors.black,
            ),
          ),
          // SizedBox(height: 10),
          Container(
            height: 250,
            width: 250,
            child: Image.asset("assets/images/cat.png", fit: BoxFit.contain),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
            child: Column(
              children: [
                InputTextField(
                  validator: (value) {
                    if (value.isEmpty) {
                      return "Please Enter Username";
                    }
                    return null;
                  },
                  hint: "Username",
                  change: (value) {
                    name = value;
                    setState(() {});
                  },
                  obsure: false,
                ),
                SizedBox(height: 10),
                InputTextField(
                  validator: (value) {
                    if (value.isEmpty) {
                      return "Please Enter Password";
                    }
                    else if(value.length < 6) {
                      return "Password should be 6 digit.";
                    }
                    return null;
                  },
                  hint: "Password",
                  change: (value) {},
                  obsure: true,
                ),
                SizedBox(height: 15),
                // login

                Material(
                  color: loginback,
                  borderRadius: BorderRadius.circular(changebtn ? 30 : 5),
                  child: InkWell(
                    onTap: () => moveToHome(context),

                    // we can use Ink instead of AnimatedContainer
                    child: AnimatedContainer(
                      duration: Duration(milliseconds: 500),
                      height: 50,
                      width: changebtn ? 50 : 200,
                      alignment: Alignment.center,
                      child: changebtn
                          ? Icon(
                              Icons.done,
                              color: Colors.white,
                            )
                          : Text("LOGIN",
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white)),
                    ),
                  ),
                ),

                SizedBox(height: 3),
                // Text("Hello $name")
              ],
            ),
          ),
        ],
      ),
    ));
  }
}

// ignore: must_be_immutable
class InputTextField extends StatelessWidget {
  InputTextField({
    Key key,
    @required this.hint,
    @required this.obsure,
    @required this.change,
    @required this.validator,
  }) : super(key: key);

  final String hint;
  final bool obsure;
  final Function change;
  final Function validator;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: validator,
      onChanged: change,
      obscureText: obsure,
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
