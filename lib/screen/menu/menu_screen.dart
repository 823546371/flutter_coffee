import 'package:flutter/material.dart';
import 'package:flutter_coffee/constant.dart';
import 'package:flutter_coffee/screen/menu/widget/menu_item.dart';

class MenuScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: ListView.builder(
        itemCount: coffeeNames.length,
        itemBuilder: (context, index) => MenuItem(index: index,),
      ),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      title: Text(
        'Menu',
        style: TextStyle(
          color: mPrimaryTextColor,
        ),
      ),
      leading: IconButton(
        icon: Icon(
          Icons.arrow_back_ios,
          color: mPrimaryTextColor,
        ),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      bottom: PreferredSize(
        child: Divider(
          height: 1,
          color: mPrimaryTextColor.withOpacity(0.5),
        ),
        preferredSize: Size.fromHeight(1),
      ),
    );
  }
}

