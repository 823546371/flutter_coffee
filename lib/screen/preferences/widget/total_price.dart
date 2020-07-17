import 'package:flutter/material.dart';
import 'package:flutter_coffee/constant.dart';

class TotalPrice extends StatelessWidget {
  const TotalPrice({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 30,horizontal: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            'Total',
            style: TextStyle(
              color: mPrimaryTextColor,
              fontSize: 28,
            ),
          ),
          Text(
            '42 EGP',
            style: TextStyle(
              color: mTitleTextColor,
              fontSize: 24,
              fontWeight: FontWeight.w500
            ),
          ),
        ],
      ),
    );
  }
}
