import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';
// import 'package:shop_app/screens/cart/cart_screen.dart';
import 'package:shop_app/Food/food_screen.dart';
import 'package:shop_app/shop/shop_screen.dart';
import 'package:shop_app/Service/service_screen.dart';
import '../../../size_config.dart';

class Categories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> categories1 = [
      {"icon": "assets/images/food.png", "text": "FOOD"},
      {"icon": "assets/images/shop.png", "text": "SHOPS"},
    ];
    List<Map<String, dynamic>> categories2 = [
      {"icon": "assets/images/service.png", "text": "SERVICES"},
      {"icon": "assets/images/plus.png", "text": "+"}
    ];
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.all(getProportionateScreenWidth(30)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: List.generate(
              categories1.length,
              (index) => CategoryCard(
                icon: categories1[index]["icon"],
                text: categories1[index]["text"],
                press: () => Navigator.pushNamed(
                    context,
                    (categories1[index]["text"] == "FOOD")
                        ? FoodScreen.routeName
                        : ShopScreen.routeName),
              ),

              // press: () => {
              //       Navigator.of(context).pushReplacement(
              //         MaterialPageRoute(
              //           builder: (context) =>
              //               ((categories1[index]["text"] == "Food")
              //                   ? FoodScreen()
              //                   : ShopScreen()),
              //         ),
              //       )
              //     }),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.all(getProportionateScreenWidth(30)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: List.generate(
              categories2.length,
              (index) => CategoryCard(
                icon: categories2[index]["icon"],
                text: categories2[index]["text"],
                press: () => Navigator.pushNamed(
                    context,
                    (categories2[index]["text"] == "SERVICES")
                        ? ServiceScreen.routeName
                        : ''),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    Key? key,
    required this.icon,
    required this.text,
    required this.press,
  }) : super(key: key);

  final String icon, text;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: SizedBox(
        width: getProportionateScreenWidth(100),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(getProportionateScreenWidth(10)),
              height: getProportionateScreenWidth(100),
              width: getProportionateScreenWidth(100),
              decoration: BoxDecoration(
                //  color: Color(0xFFFFECDF),
                color: Color(0x70CAD5E2),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Image.asset(
                icon,
              ),
            ),
            SizedBox(height: 4),
            Text(text, textAlign: TextAlign.center)
          ],
        ),
      ),
    );
  }
}
