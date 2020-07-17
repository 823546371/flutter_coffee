import 'package:flutter/material.dart';
import 'package:flutter_coffee/constant.dart';
import 'package:flutter_svg/svg.dart';

class Attribute extends StatelessWidget {
  const Attribute({
    Key key,
    this.title,
    this.iconNames,
    this.alignment = Alignment.center,
    this.check = -1,
  }) : super(key: key);

  final String title;
  final List<String> iconNames;
  final Alignment alignment;
  final int check;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 16),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Text(
              title,
              style: TextStyle(
                color: mTitleTextColor,
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: ListView.builder(
              itemCount: iconNames.length,
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => Container(
                alignment: alignment,
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: SvgPicture.asset(
                  'assets/icons/${iconNames[index]}.svg',
                  color: check == index ? mTitleTextColor : mPrimaryTextColor,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
