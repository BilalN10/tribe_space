import 'package:flutter/material.dart';
import 'package:tribe_space/constants/colors.dart';
import 'package:tribe_space/utils/size_config.dart';

class PronounsandCity extends StatefulWidget {
  const PronounsandCity({Key? key}) : super(key: key);

  @override
  State<PronounsandCity> createState() => _PronounsandCityState();
}

class _PronounsandCityState extends State<PronounsandCity> {
  String dropdownvalue = 'Pronouns';
  String city = 'New york';

  // List of items in our dropdown menu
  var pronounsItems = [
    'Pronouns',
    'Item 2',
    'Item 3',
    'Item 4',
    'Item 5',
  ];
  var cityItems = [
    'New york',
    'Item 2',
    'Item 3',
    'Item 4',
    'Item 5',
  ];

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          height: 6 * SizeConfig.heightMultiplier,
          width: 40 * SizeConfig.imageSizeMultiplier,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: greyColor)),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: DropdownButton(
              // Initial Value
              value: dropdownvalue,
              underline: SizedBox(),
              isExpanded: true,

              // Down Arrow Icon
              icon: Image.asset('assets/icons/down_icon.png'),
              style: const TextStyle(color: greyColor),

              // Array list of items
              items: pronounsItems.map((String items) {
                return DropdownMenuItem(
                  value: items,
                  child: Text(items),
                );
              }).toList(),

              // After selecting the desired option,it will
              // change button value to selected value
              onChanged: (String? newValue) {
                setState(() {
                  dropdownvalue = newValue!;
                });
              },
            ),
          ),
        ),
        Container(
          height: 6 * SizeConfig.heightMultiplier,
          width: 40 * SizeConfig.imageSizeMultiplier,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: greyColor)),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: DropdownButton(
              // Initial Value
              value: city,
              underline: SizedBox(),
              isExpanded: true,
              style: const TextStyle(color: greyColor),

              // Down Arrow Icon
              icon: Image.asset('assets/icons/down_icon.png'),

              // Array list of items
              items: cityItems.map((String items) {
                return DropdownMenuItem(
                  value: items,
                  child: Text(items),
                );
              }).toList(),
              // After selecting the desired option,it will
              // change button value to selected value
              onChanged: (String? newValue) {
                setState(() {
                  city = newValue!;
                });
              },
            ),
          ),
        ),
      ],
    );
  }
}
