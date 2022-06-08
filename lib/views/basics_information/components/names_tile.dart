import 'package:flutter/material.dart';
import 'package:tribe_space/constants/colors.dart';
import 'package:tribe_space/utils/size_config.dart';
import 'package:tribe_space/widgets/name_field.dart';

class NameTile extends StatelessWidget {
  NameTile({Key? key}) : super(key: key);

  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 15 * SizeConfig.heightMultiplier,
      width: 90 * SizeConfig.widthMultiplier,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: greyColor)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
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
        ],
      ),
    );
  }
}
