import 'package:flutter/material.dart';
import 'package:flutter_coffee/constant.dart';
import 'package:flutter_coffee/screen/main/widget/icon_text.dart';

class StoreName extends StatelessWidget {
  const StoreName({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'Starbucks',
            style: TextStyle(
              color: mTitleTextColor,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 6,
          ),
          Row(
            children: <Widget>[
              IconText(
                iconUrl: 'assets/icons/distance.svg',
                title: '4,23 mi',
              ),
              SizedBox(width: 60,),
              IconText(
                iconUrl: 'assets/icons/time.svg',
                title: '20 min',
              )
            ],
          )
        ],
      ),
    );
  }
}


