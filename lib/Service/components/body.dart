import 'package:flutter/material.dart';
import 'package:shop_app/models/ServiceItems.dart';
import 'ServiceItemsService.dart';
import 'package:shop_app/widgets/service_card.dart';

// ignore: must_be_immutable
class Body extends StatelessWidget {
  List<ServiceItems> serviceData = ServiceItemsService.serviceItemData;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        child: Wrap(
          spacing: 16,
          runSpacing: 16,
          children: List.generate(
            serviceData.length,
            (index) => ServiceCard(
              service: serviceData[index],
            ),
          ),
        ),
      ),
    );
  }
}
