import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tribe_space/constants/colors.dart';
import 'package:tribe_space/utils/size_config.dart';
import 'package:tribe_space/views/add_color/add_color_page.dart';
import 'package:tribe_space/views/last_step/last_step_page.dart';
import 'package:tribe_space/widgets/name_field.dart';
import 'package:tribe_space/widgets/primary_button.dart';

import 'components/names_tile.dart';
import 'components/pronouns_and_city_tile.dart';

class BasicInformationPage extends StatefulWidget {
  const BasicInformationPage({Key? key}) : super(key: key);

  @override
  State<BasicInformationPage> createState() => _BasicInformationPageState();
}

class _BasicInformationPageState extends State<BasicInformationPage> {
  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController controller = TextEditingController();
  TextEditingController emailController = TextEditingController();
  String _enteredText = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 8 * SizeConfig.widthMultiplier,
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 5 * SizeConfig.heightMultiplier,
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
                    style: Theme.of(context).textTheme.bodyText1?.copyWith(
                        fontWeight: FontWeight.normal, color: greyColor),
                  ),
                ),
                SizedBox(
                  height: 1 * SizeConfig.heightMultiplier,
                ),
                NameTile(),
                SizedBox(
                  height: 2 * SizeConfig.heightMultiplier,
                ),
                const PronounsandCity(),
                SizedBox(
                  height: 2 * SizeConfig.heightMultiplier,
                ),
                Container(
                  height: 16 * SizeConfig.heightMultiplier,
                  width: 90 * SizeConfig.widthMultiplier,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: greyColor)),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      onChanged: (value) {
                        setState(() {
                          _enteredText = value;
                        });
                      },
                      cursorColor: primaryColor,
                      maxLines: 7,
                      maxLength: 100,
                      decoration: InputDecoration(
                          hintText: 'Headline',
                          hintStyle: const TextStyle(color: greyColor),
                          // labelText: 'Your Name',
                          border: InputBorder.none,

                          // Display the number of entered characters
                          counterText:
                              '${_enteredText.length.toString()} /100'),
                    ),
                  ),
                ),
                SizedBox(
                  height: 2 * SizeConfig.heightMultiplier,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Public, used as the text below your name',
                    style: Theme.of(context).textTheme.bodyText1?.copyWith(
                        fontWeight: FontWeight.normal, color: greyColor),
                  ),
                ),
                SizedBox(
                  height: 3 * SizeConfig.heightMultiplier,
                ),
                NameField(
                    isCircular: true,
                    isPass: false,
                    controller: emailController,
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
                    hint: 'Email'),
                SizedBox(
                  height: 2 * SizeConfig.heightMultiplier,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Private, only used to help you log in',
                    style: Theme.of(context).textTheme.bodyText1?.copyWith(
                        fontWeight: FontWeight.normal, color: greyColor),
                  ),
                ),
                SizedBox(
                  height: 5 * SizeConfig.heightMultiplier,
                ),
                PrimaryButton(
                  txt: 'Next',
                  voidCallback: () {
                    Get.to(() => AddColorPage());
                  },
                )
              ],
            ),
          ),
        ),
      )),
    );
  }
}
