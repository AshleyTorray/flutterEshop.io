import 'package:flutter/material.dart';
import 'package:dropdown_button2/dropdown_button2.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class SearchField extends StatelessWidget {
  const SearchField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<String> items = [
      'profile',
      'password',
      'order',
      'history',
      'Pointer',
      'Item6',
      'Item7',
      'Item8',
    ];
    String? selectedValue;
    return Container(
      width: SizeConfig.screenWidth * 0.3,
      // decoration: BoxDecoration(
      //   color: kSecondaryColor.withOpacity(0.1),
      //   borderRadius: BorderRadius.circular(15),
      // ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton2<String>(
          isExpanded: true,
          hint: const Row(
            children: [
              Icon(
                Icons.list,
                size: 20,
                color: Colors.lightGreen,
              ),
              SizedBox(
                width: 1,
              ),
              Expanded(
                child: Text(
                  ' Menu',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
          items: items
              .map((String item) => DropdownMenuItem<String>(
                    value: item,
                    child: Text(
                      item,
                      style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ))
              .toList(),
          value: selectedValue,
          onChanged: (String? value) {
            selectedValue = value;
          },
          buttonStyleData: ButtonStyleData(
            height: 50,
            width: 200,
            padding: const EdgeInsets.only(left: 14, right: 14),
            // decoration: BoxDecoration(
            //   borderRadius: BorderRadius.circular(14),
            //   border: Border.all(
            //     color: Colors.black26,
            //   ),
            //   color: Colors.white,
            // ),
            elevation: 2,
          ),
          dropdownStyleData: DropdownStyleData(
            maxHeight: 500,
            width: 200,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(14),
              color: Colors.white,
            ),
            offset: const Offset(0, 0),
            scrollbarTheme: ScrollbarThemeData(
              radius: const Radius.circular(40),
              thickness: MaterialStateProperty.all<double>(6),
              thumbVisibility: MaterialStateProperty.all<bool>(true),
            ),
          ),
          menuItemStyleData: const MenuItemStyleData(
            height: 40,
            padding: EdgeInsets.only(left: 14, right: 14),
          ),
        ),
      ),
    );
  }
}
