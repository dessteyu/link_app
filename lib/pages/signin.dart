import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:link_app/buttons/button_widget.dart';
import 'package:link_app/buttons/social_button.dart';
import 'package:link_app/fonts/custom_icons_icons.dart';
import 'package:link_app/pages/home_screen.dart';
import 'package:link_app/pages/signup.dart';
import 'package:link_app/textield/textfield_widget.dart';
import 'package:link_app/theme/theme.dart';

class SignInScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: 16),
                  child: IconButton(
                      icon: Icon(Icons.arrow_back),
                      onPressed: () {
                        Navigator.maybePop(context);
                      }),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      alignment: Alignment.topCenter,
                      margin: EdgeInsets.all(8),
                      child: Image.asset(
                        'assets/images/yourcompagny.png',
                        height: 200,
                        width: 160,
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.all(8),
                      child: RichText(
                        text: TextSpan(
                            text: 'Welcome to ',
                            style: TextStyle(
                                color: DefaultTheme.ColorSecondaryDark,
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                decoration: TextDecoration.none),
                            children: [
                              TextSpan(
                                  text: 'Link App',
                                  style: TextStyle(color: Colors.blue[700]))
                            ]),
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.all(8),
                      child: Text(
                        'Votre choix et la notre. Simple et intuitif!',
                        style: TextStyle(
                          color: DefaultTheme.ColorSecondary,
                          fontSize: 12,
                          decoration: TextDecoration.none,
                        ),
                      ),
                    ),
                    TextFieldWidget(
                      hintText: 'Email',
                      icon: Icons.mail,
                    ),
                    TextFieldWidget(
                      hintText: 'Password',
                      icon: Icons.lock_open,
                    ),
                    ButtonWidget(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (_) => HomeScreen()));
                      },
                      title: 'Sign in',
                    ),
                    Container(
                      margin: EdgeInsets.all(8),
                      child: Text(
                        'Or conntect using',
                        style: TextStyle(color: DefaultTheme.ColorSecondary),
                      ),
                    ),
                    Container(
                      alignment: Alignment.topCenter,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          SocialButton(
                            title: 'Facebook',
                            iconData: CustomIcons.facebook,
                            color: Colors.blue[800],
                          ),
                          SocialButton(
                            title: 'Google',
                            iconData: CustomIcons.gplus,
                            color: Colors.red[800],
                          )
                        ],
                      ),
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
                                    style: TextStyle(
                                        color: Colors.blue[700],
                                        fontWeight: FontWeight.bold),
                                    recognizer: TapGestureRecognizer()
                                      ..onTap = () {
                                        print('object');
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (_) =>
                                                    SignUpScreen()));
                                      })
                              ]),
                        ))
                  ],
                )
              ],
            )));
  }
}
