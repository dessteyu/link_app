import 'package:flutter/material.dart';
import 'package:link_app/theme/theme.dart';

class TextFieldWidget extends StatelessWidget {
  final String hintText;
  final IconData icon;

  const TextFieldWidget({Key key, this.hintText, this.icon}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8),
      child: SizedBox(
        height: 40,
        width: MediaQuery.of(context).size.width * 0.95,
        child: TextField(
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
            ),
            hintText: hintText,
            contentPadding: EdgeInsets.all(8),
            hintStyle: TextStyle(color: DefaultTheme.ColorSecondaryAccent),
            prefixIcon: Icon(icon),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
            ),
          ),
        ),
      ),
    );
  }
}
