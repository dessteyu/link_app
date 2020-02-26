import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  final VoidCallback onPressed;
  final String title;

  const ButtonWidget({Key key, this.onPressed, this.title}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8),
      child: SizedBox(
        height: 40,
        width: MediaQuery.of(context).size.width * 0.95,
        child: RaisedButton(
          onPressed: onPressed,
          child: Text(title),
          color: Colors.blue[700],
          textColor: Colors.white,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
        ),
      ),
    );
  }
}
