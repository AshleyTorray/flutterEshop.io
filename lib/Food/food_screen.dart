import 'package:flutter/material.dart';
import 'components/body.dart';

class FoodScreen extends StatelessWidget {
  static String routeName = "/food";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: Body(),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      title: Column(
        children: [
          Text(
            "Restaurant & Cafe",
            style: TextStyle(color: Colors.black),
          ),
          Text(
            // "${demoCarts.length} items",
            "10 foods",
            style: Theme.of(context).textTheme.caption,
          ),
        ],
      ),
    );
  }
}
