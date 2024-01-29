import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shop_app/core/constants/shop_colors.dart';
import 'package:shop_app/models/Notification.dart';
import 'package:shop_app/shop/components/NotificationService.dart';
import 'package:shop_app/widgets/main_app_bar_widget.dart';
import 'package:shop_app/widgets/menu_tile_widget.dart';
import 'package:shop_app/widgets/notification_tile.dart';

class NotificationPage extends StatefulWidget {
  @override
  _NotificationPageState createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  List<UserNotification> listNotification =
      NotificationService.listNotification;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainAppBar(
        cartValue: 2,
        chatValue: 2,
      ),
      body: ListView(
        shrinkWrap: true,
        physics: BouncingScrollPhysics(),
        children: [
          // Section 1 - Menu
          MenuTileWidget(
            onTap: () {},
            icon: SvgPicture.asset(
              'assets/icons/Discount.svg',
              color: AppColor.secondary.withOpacity(0.5),
            ),
            title: 'Product Promo',
            subtitle: 'Lorem ipsum Dolor sit Amet',
            iconBackground: Color(0xFFEAEAF2),
            titleColor: Color(0xFF0A0E2F),
            margin: EdgeInsets.all(0),
          ),
          MenuTileWidget(
            onTap: () {},
            icon: SvgPicture.asset(
              'assets/icons/Info Square.svg',
              color: AppColor.secondary.withOpacity(0.5),
            ),
            title: 'Marketky Info',
            subtitle: 'Lorem ipsum Dolor sit Amet',
            iconBackground: Color(0xFFEAEAF2),
            titleColor: Color(0xFF0A0E2F),
            margin: EdgeInsets.all(0),
          ),
          // Section 2 - Status ( LIST )
          Container(
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.symmetric(vertical: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 16, bottom: 8),
                  child: Text(
                    'ORDERS STATUS',
                    style: TextStyle(
                        color: AppColor.secondary.withOpacity(0.5),
                        letterSpacing: 6 / 100,
                        fontWeight: FontWeight.w600),
                  ),
                ),
                ListView.builder(
                  itemBuilder: (context, index) {
                    return NotificationTile(
                      data: listNotification[index],
                      onTap: () {},
                    );
                  },
                  itemCount: listNotification.length,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
