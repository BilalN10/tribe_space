import 'package:flutter/material.dart';
import 'package:tribe_space/utils/size_config.dart';
import 'package:tribe_space/widgets/input_field.dart';
import 'package:tribe_space/widgets/name_field.dart';

class BasicInformationPage extends StatefulWidget {
  const BasicInformationPage({Key? key}) : super(key: key);

  @override
  State<BasicInformationPage> createState() => _BasicInformationPageState();
}

class _BasicInformationPageState extends State<BasicInformationPage> {
  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  String dropdownvalue = 'Item 1';

  // List of items in our dropdown menu
  var items = [
    'Item 1',
    'Item 2',
    'Item 3',
    'Item 4',
    'Item 5',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 6 * SizeConfig.widthMultiplier,
            ),
            child: Column(
              children: [
                SizedBox(
                  height: 10 * SizeConfig.heightMultiplier,
                ),
                Text(
                  'first, the basics',
                  style: Theme.of(context).textTheme.headline4?.copyWith(
                      fontSize: 3.3 * SizeConfig.textMultiplier,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
                SizedBox(
                  height: 2 * SizeConfig.heightMultiplier,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'You can always change this later',
                    style: Theme.of(context)
                        .textTheme
                        .bodyText1
                        ?.copyWith(fontWeight: FontWeight.normal),
                  ),
                ),
                SizedBox(
                  height: 1 * SizeConfig.heightMultiplier,
                ),

                Container(
                  height: 15 * SizeConfig.heightMultiplier,
                  width: 90 * SizeConfig.widthMultiplier,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.black)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        height: 1 * SizeConfig.heightMultiplier,
                      ),
                      NameField(
                          isCircular: false,
                          isPass: false,
                          controller: firstNameController,
                          isSufix: false,
                          validator: (value) {
                            if (value!.isEmpty || value == null) {
                              return "Required";
                            } else {
                              return null;
                            }
                          },
                          sufixIcon: Icons.abc,
                          label: '',
                          hint: 'First name'),
                      Divider(),
                      NameField(
                          isCircular: false,
                          isPass: false,
                          controller: lastNameController,
                          isSufix: false,
                          validator: (value) {
                            if (value!.isEmpty || value == null) {
                              return "Required";
                            } else {
                              return null;
                            }
                          },
                          sufixIcon: Icons.abc,
                          label: '',
                          hint: 'Last name'),
                      SizedBox(
                        height: 1 * SizeConfig.heightMultiplier,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 2 * SizeConfig.heightMultiplier,
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 6 * SizeConfig.heightMultiplier,
                      width: 40 * SizeConfig.imageSizeMultiplier,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.black)),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: DropdownButton(
                          // Initial Value
                          value: dropdownvalue,
                          underline: SizedBox(),
                          isExpanded: true,

                          // Down Arrow Icon
                          icon: const Icon(Icons.keyboard_arrow_down),

                          // Array list of items
                          items: items.map((String items) {
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
                          border: Border.all(color: Colors.black)),
                    )
                  ],
                ),

                // NameField(
                //     isCircular: false,
                //     isPass: false,
                //     controller: firstNameController,
                //     isSufix: false,
                //     validator: (value) {
                //       if (value!.isEmpty || value == null) {
                //         return "Required";
                //       } else {
                //         return null;
                //       }
                //     },
                //     sufixIcon: Icons.abc,
                //     label: '',
                //     hint: 'abcd@gmail.com'),
              ],
            ),
          ),
        ),
      )),
    );
  }
}
