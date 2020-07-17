import 'package:flutter/material.dart';
import 'package:flutter_coffee/constant.dart';

class NameAndNumber extends StatelessWidget {
  const NameAndNumber({
    Key key,
    @required this.index,
  }) : super(key: key);

  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 20,
        horizontal: 30,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                coffeeNames[index],
                style: TextStyle(
                  color: mTitleTextColor,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 6,
              ),
              Text(
                '36 EGP',
                style: TextStyle(
                  color: mTitleTextColor,
                  fontSize: 16,
                ),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Text(
                '1',
                style: TextStyle(
                  color: mTitleTextColor,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                width: 6,
              ),
              Container(
                padding: const EdgeInsets.symmetric(
                    vertical: 2, horizontal: 14),
                decoration: BoxDecoration(
                  border: Border.all(color: mTitleTextColor),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(36),
                    bottomLeft: Radius.circular(36),
                  ),
                ),
                child: Text(
                  '-',
                  style: TextStyle(
                    color: mTitleTextColor,
                    fontSize: 20,
                  ),
                ),
              ),
              SizedBox(
                width: 6,
              ),
              Container(
                padding: const EdgeInsets.symmetric(
                    vertical: 2, horizontal: 14),
                decoration: BoxDecoration(
                  border: Border.all(color: mTitleTextColor),
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(36),
                    bottomRight: Radius.circular(36),
                  ),
                ),
                child: Text(
                  '+',
                  style: TextStyle(
                    color: mTitleTextColor,
                    fontSize: 20,
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
