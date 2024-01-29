import 'package:flutter/material.dart';
// import 'package:shop_app/core/constants/app_colors.dart';
import 'package:shop_app/models/ServiceItems.dart';
import 'package:shop_app/widgets/card_detail.dart';
// import 'package:shop_app/widgets/rating_tag.dart';

class ServiceCard extends StatelessWidget {
  final ServiceItems service;
  final Color titleColor;
  final Color priceColor;

  ServiceCard({
    required this.service,
    this.titleColor = Colors.black,
    this.priceColor = Colors.blueAccent,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Navigator.of(context).push(MaterialPageRoute(
        //     builder: (context) => ProductDetail(product: product)));

        Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (context) => CardDetail(
                  service: service,
                )));
      },
      child: Container(
        width: MediaQuery.of(context).size.width / 2 - 16 - 8,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // item image
            Container(
              width: MediaQuery.of(context).size.width / 2 - 16 - 8,
              height: MediaQuery.of(context).size.width / 2 - 16 - 8,
              padding: EdgeInsets.all(10),
              alignment: Alignment.topLeft,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                image: DecorationImage(
                    image: AssetImage(service.image[0]), fit: BoxFit.cover),
              ),
              // child: RatingTag(value: product.rating, margin: ,),
            ),

            // item details
            Container(
              padding: EdgeInsets.symmetric(vertical: 14, horizontal: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '${service.name}',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w700,
                      color: titleColor,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 2, bottom: 8),
                    child: Text(
                      '${service.price}',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        fontFamily: 'Poppins',
                        color: priceColor,
                      ),
                    ),
                  ),
                  Text(
                    '${service.storeName}',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 10,
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
