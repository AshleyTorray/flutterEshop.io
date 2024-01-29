import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shop_app/shop/components/feeds_page.dart';
import 'package:shop_app/shop/shop_screen.dart';
import 'package:shop_app/shop/components/notification_page.dart';
import 'package:shop_app/shop/components/profile_page.dart';

class PageSwitcher extends StatefulWidget {
  @override
  _PageSwitcherState createState() => _PageSwitcherState();
}

class _PageSwitcherState extends State<PageSwitcher> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: [
        ShopScreen(),
        FeedsPage(),
        NotificationPage(),
        ProfilePage(),
      ][_selectedIndex],
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
            border:
                Border(top: BorderSide(color: Color(0xFFEAEAF2), width: 2))),
        child: BottomNavigationBar(
          onTap: _onItemTapped,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          items: [
            (_selectedIndex == 0)
                ? BottomNavigationBarItem(
                    icon: SvgPicture.asset('assets/icons/Home-active.svg'),
                    label: '')
                : BottomNavigationBarItem(
                    icon: SvgPicture.asset('assets/icons/Home.svg'), label: ''),
            (_selectedIndex == 1)
                ? BottomNavigationBarItem(
                    icon: SvgPicture.asset('assets/icons/Category-active.svg'),
                    label: '')
                : BottomNavigationBarItem(
                    icon: SvgPicture.asset('assets/icons/Category.svg'),
                    label: ''),
            (_selectedIndex == 2)
                ? BottomNavigationBarItem(
                    icon: SvgPicture.asset(
                        'assets/icons/Notification-active.svg'),
                    label: '')
                : BottomNavigationBarItem(
                    icon: SvgPicture.asset('assets/icons/Notification.svg'),
                    label: ''),
            (_selectedIndex == 3)
                ? BottomNavigationBarItem(
                    icon: SvgPicture.asset('assets/icons/Profile-active.svg'),
                    label: '')
                : BottomNavigationBarItem(
                    icon: SvgPicture.asset('assets/icons/Profile.svg'),
                    label: ''),
          ],
        ),
      ),
    );
  }
}
