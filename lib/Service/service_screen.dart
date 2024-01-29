import 'package:flutter/material.dart';
import 'components/body.dart';

class ServiceScreen extends StatelessWidget {
  static String routeName = "/service";
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
            "Service",
            style: TextStyle(color: Colors.black),
          ),
          Text(
            // "${demoCarts.length} items",
            "haircut, babel salons",
            style: Theme.of(context).textTheme.caption,
          ),
        ],
      ),
    );
  }
}
