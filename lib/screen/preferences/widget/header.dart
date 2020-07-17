import 'package:flutter/material.dart';
import 'package:flutter_coffee/constant.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Header extends StatelessWidget {
  const Header({
    Key key,
    @required this.index,
  }) : super(key: key);

  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 183,
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/images/header.png'),
            fit: BoxFit.cover),
      ),
      child: UnconstrainedBox(
        child: SvgPicture.asset(
          'assets/icons/${coffeeNames[index]}.svg',
          height: 100,
        ),
      ),
    );
  }
}
