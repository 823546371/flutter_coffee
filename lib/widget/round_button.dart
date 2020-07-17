import 'package:flutter/material.dart';
import 'package:flutter_coffee/constant.dart';

class RoundButton extends StatelessWidget {
  const RoundButton({
    Key key,
    this.title,
    this.press,
  }) : super(key: key);

  final String title;
  final Function press;

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(36),
      ),
      color: mPrimaryColor,
      onPressed: press,
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(vertical: 16),
        alignment: Alignment.center,
        child: Text(
          title,
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
