import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:link_app/buttons/button_widget.dart';
import 'package:link_app/pages/signin.dart';
import 'package:link_app/textield/textfield_widget.dart';
import 'package:link_app/theme/theme.dart';

class SignUpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              child: IconButton(
                  icon: Icon(Icons.arrow_back),
                  onPressed: () {
                    Navigator.maybePop(context);
                  }),
              margin: EdgeInsets.only(top: 16),
            ),
            Container(
              child: Column(
                children: <Widget>[
                  Container(
                    alignment: Alignment.topLeft,
                    margin: EdgeInsets.all(8),
                    child: Text(
                      'Sign up',
                      style:
                          TextStyle(fontWeight: FontWeight.w800, fontSize: 28),
                    ),
                  ),
                  TextFieldWidget(
                    hintText: 'Nom',
                    icon: Icons.person,
                  ),
                  TextFieldWidget(
                    hintText: 'Email',
                    icon: Icons.mail,
                  ),
                  TextFieldWidget(
                    hintText: 'Password',
                    icon: Icons.lock_open,
                  ),
                  TextFieldWidget(
                    hintText: 'Confirm Password',
                    icon: Icons.lock,
                  ),
                  ButtonWidget(
                    onPressed: () {},
                    title: 'Sign up',
                  ),
                  Container(
                      margin: EdgeInsets.all(8),
                      child: RichText(
                        text: TextSpan(
                            text: 'Already have account?',
                            style: TextStyle(
                                color: DefaultTheme.ColorSecondaryDark),
                            children: [
                              TextSpan(
                                  text: ' Sign in ',
                                  style: TextStyle(color: Colors.blue[700], fontWeight: FontWeight.bold),
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () {
                                      print('object');
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (_) => SignInScreen()));
                                    })
                            ]),
                      ))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
