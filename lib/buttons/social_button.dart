import 'package:flutter/material.dart';

class SocialButton extends StatelessWidget {
  final IconData iconData;
  final String title;
  final Color color;

  const SocialButton({Key key, this.iconData, this.title, this.color}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(      
      onTap: () {
        print('object');
      },
      child: Container(
        color: color,
        alignment: Alignment.center,
        margin: EdgeInsets.all(8),
        child: SizedBox(
          height: 40,
          width: 130,
          child: Row(
            children: <Widget>[
              Container(
                margin: const EdgeInsets.all(4.0),
                child: Icon(
                  iconData,
                  size: 32,
                  color: Colors.white,
                ),
              ),
              Container(
                alignment: Alignment.centerRight,
                margin: const EdgeInsets.all(4.0),
                child: Text(
                  title,
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
