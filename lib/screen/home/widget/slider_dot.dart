import 'package:flutter/material.dart';
import 'package:flutter_coffee/constant.dart';

class SliderDot extends StatelessWidget {
  const SliderDot({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 2),
            width: 6,
            height: 6,
            decoration: BoxDecoration(
              color: mPrimaryColor,
              borderRadius: BorderRadius.circular(50),
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 2),
            width: 6,
            height: 6,
            decoration: BoxDecoration(
              color: mPrimaryColor.withOpacity(0.3),
              borderRadius: BorderRadius.circular(50),
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 2),
            width: 6,
            height: 6,
            decoration: BoxDecoration(
              color: mPrimaryColor.withOpacity(0.3),
              borderRadius: BorderRadius.circular(50),
            ),
          ),
        ],
      ),
    );
  }
}
