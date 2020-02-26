import 'package:flutter/material.dart';

class HomeButton extends StatelessWidget {
  final VoidCallback onPressed;
  final Color color;
  final String title;
  final Color textColor;

  const HomeButton(
      {Key key, this.onPressed, this.color, this.title, this.textColor})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8),
      child: SizedBox(
        height: 40,
        width: MediaQuery.of(context).size.width * 0.95,
        child: RaisedButton(
          onPressed: onPressed,
          color: color,
          child: Text(title),
          textColor: textColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusDirectional.circular(20),
          ),
        ),
      ),
    );
  }
}

class HomeOutlineButton extends StatelessWidget {
  final VoidCallback onPressed;
  final Color color;
  final String title;
  final Color textColor;

  const HomeOutlineButton(
      {Key key, this.onPressed, this.color, this.title, this.textColor})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(9),
      child: SizedBox(
        height: 40,
        width: MediaQuery.of(context).size.width * 0.95,
        child: OutlineButton(
          onPressed: onPressed,
          child: Text(title),
          textColor: textColor,
          borderSide: BorderSide(color: color),
          shape: RoundedRectangleBorder(borderRadius: BorderRadiusDirectional.circular(20)),
        ),
      ),
    );
  }
}
