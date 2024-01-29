import 'package:flutter/material.dart';
import 'package:shop_app/models/ExploreUpdate.dart';

class UpdateCardWidget extends StatelessWidget {
  final ExploreUpdate data;
  UpdateCardWidget({required this.data});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Section 1 - Header
          Container(
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            child: Row(
              children: [
                Container(
                  width: 40,
                  height: 40,
                  margin: EdgeInsets.only(right: 16),
                  decoration: BoxDecoration(
                    color: Color(0xFFEAEAF2),
                    borderRadius: BorderRadius.circular(8),
                    image: DecorationImage(
                      image: AssetImage('${data.logoUrl}'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '${data.storeName}',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'poppins',
                          color: Color(0xFF0A0E2F),
                        ),
                      ),
                      Text(
                        '72k Followers',
                        style: TextStyle(
                          fontSize: 12,
                          color: Color(0xFF0A0E2F).withOpacity(0.5),
                        ),
                      ),
                    ],
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text('follow',
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontFamily: 'poppins',
                          fontSize: 12)),
                  style: TextButton.styleFrom(
                    foregroundColor: Color(0xFF242476),
                  ),
                ),
              ],
            ),
          ),
          // Section 2 - Image
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: Color(0xFFEAEAF2),
              image: DecorationImage(
                image: AssetImage('${data.image}'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Section 3 - Caption
          Container(
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
            child: Text(
              '${data.caption}',
              style: TextStyle(height: 150 / 100),
            ),
          )
        ],
      ),
    );
  }
}
