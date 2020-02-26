import 'package:flutter/material.dart';
import 'package:link_app/buttons/home_button.dart';
import 'package:link_app/pages/signin.dart';
import 'package:link_app/pages/signup.dart';
import 'package:link_app/theme/theme.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Link App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topCenter,
      color: DefaultTheme.ColorsBackgorund,
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        padding: EdgeInsets.only(top: 32),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              margin: EdgeInsets.all(16),
              // padding: EdgeInsets.all(8),
              alignment: Alignment.center,
              child: Text(
                'Link App',
                style: TextStyle(
                  fontSize: 28,
                  color: Colors.blue[700],
                  fontWeight: FontWeight.w700,
                  decoration: TextDecoration.none,
                ),
              ),
            ),
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.all(8),
              // padding: EdgeInsets.all(8),
              child: Text(
                'Welcome to Link App',
                style: TextStyle(
                    color: DefaultTheme.ColorSecondaryDark,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    decoration: TextDecoration.none),
              ),
            ),
            Container(
              // width: 200,
              alignment: Alignment.center,
              // padding: const EdgeInsets.all(8.0),
              margin: EdgeInsets.all(8),
              child: Text(
                'Votre choix et la notre. \nSimple et intuitif!',
                style: TextStyle(
                    color: DefaultTheme.ColorSecondary,
                    fontSize: 12,
                    decoration: TextDecoration.none),
              ),
            ),
            Container(
                child: Image.asset(
              'assets/images/yourcompagny.png',
              height: 260,
            )),
            Column(
              children: <Widget>[
                HomeButton(
                  title: 'Sign up',
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => SignUpScreen()));
                  },
                  color: Colors.blue[700],
                  textColor: Colors.white,
                ),
                HomeOutlineButton(
                  title: 'Sign in',
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => SignInScreen()));
                  },
                  color: Colors.blue[700],
                  textColor: Colors.blue[700],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
