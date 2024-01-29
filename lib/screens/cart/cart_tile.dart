import 'package:flutter/material.dart';
import 'package:shop_app/models/Cart.dart';

class CartTile extends StatelessWidget {
  final Cart data;
  CartTile({required this.data});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 80,
      padding: EdgeInsets.only(top: 5, left: 5, bottom: 5, right: 12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: Color(0xFFD3D3E4), width: 1),
      ),
      child: Row(
        children: [
          // Image
          Container(
            width: 70,
            height: 70,
            margin: EdgeInsets.only(right: 20),
            decoration: BoxDecoration(
              color: Color(0xFFD3D3E4),
              borderRadius: BorderRadius.circular(16),
              image: DecorationImage(
                  image: AssetImage(data.image[0]), fit: BoxFit.cover),
            ),
          ),
          // Info
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Product Name
                Text(
                  '${data.name}',
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontFamily: 'poppins',
                      color: Color(0xFF0A0E2F)),
                ),
                // Product Price - Increment Decrement Button
                Container(
                  margin: EdgeInsets.only(top: 4),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // Product Price
                      Expanded(
                        child: Text(
                          '${data.price}',
                          style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontFamily: 'poppins',
                              color: Color(0xFF242476)),
                        ),
                      ),
                      // Increment Decrement Button
                      Container(
                        height: 26,
                        width: 80,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Color(0xFFEAEAF2),
                        ),
                        child: Row(
                          children: [
                            InkWell(
                              onTap: () {
                                print('minus');
                              },
                              child: Container(
                                width: 26,
                                height: 26,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: Color(0xFFEAEAF2),
                                ),
                                child: Text(
                                  '-',
                                  style: TextStyle(
                                      fontFamily: 'poppins',
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.symmetric(horizontal: 8),
                              child: FittedBox(
                                fit: BoxFit.scaleDown,
                                child: Text(
                                  '${data.count}',
                                  style: TextStyle(
                                      fontFamily: 'poppins',
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                print('plus');
                              },
                              child: Container(
                                width: 26,
                                height: 26,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: Color(0xFFEAEAF2),
                                ),
                                child: Text(
                                  '+',
                                  style: TextStyle(
                                      fontFamily: 'poppins',
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
