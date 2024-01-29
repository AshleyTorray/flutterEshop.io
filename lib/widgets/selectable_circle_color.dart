import 'package:flutter/material.dart';
import 'package:shop_app/core/constants/shop_colors.dart';
import 'package:shop_app/models/ColorWay.dart';

class SelectableCircleColor extends StatefulWidget {
  final EdgeInsetsGeometry margin, padding;
  final List<ColorWay> colorWay;

  SelectableCircleColor(
      {required this.colorWay, required this.margin, required this.padding});

  @override
  _SelectableCircleState createState() => _SelectableCircleState();
}

class _SelectableCircleState extends State<SelectableCircleColor> {
  late int _selectedIndex;

  initState() {
    _selectedIndex = 0;
  }

  _change(index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: widget.margin,
      padding: widget.padding,
      child: Wrap(
        spacing: 20,
        runSpacing: 8,
        children: List.generate(
          widget.colorWay.length,
          (index) {
            return InkWell(
              onTap: () {
                _change(index);
              },
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(width: 2, color: AppColor.primarySoft),
                    borderRadius: BorderRadius.circular(100)),
                child: Container(
                  width: 42,
                  height: 42,
                  decoration: BoxDecoration(
                    color: widget.colorWay[index].color,
                    borderRadius: BorderRadius.circular(100),
                    border: Border.all(
                      width: 4,
                      color: (index == _selectedIndex)
                          ? AppColor.primarySoft.withOpacity(0.9)
                          : Colors.transparent,
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
