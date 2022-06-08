import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tribe_space/constants/colors.dart';
import 'package:tribe_space/utils/size_config.dart';
import 'package:tribe_space/widgets/primary_button.dart';

import '../views/basics_information/basic_information_page.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: 8 * SizeConfig.widthMultiplier,
              vertical: 10 * SizeConfig.heightMultiplier),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(
                    width: 50 * SizeConfig.widthMultiplier,
                    child: Text(
                      'Welcome to tribespace!',
                      style: Theme.of(context).textTheme.headline4?.copyWith(
                          fontSize: 3.3 * SizeConfig.textMultiplier,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                  ),
                  const CircleAvatar(
                    radius: 40,
                    backgroundImage: AssetImage('assets/images/man_pic.png'),
                  ),
                ],
              ),
              SizedBox(
                height: 3 * SizeConfig.heightMultiplier,
              ),
              Container(
                width: 90 * SizeConfig.widthMultiplier,
                height: 48 * SizeConfig.heightMultiplier,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(color: Colors.grey)),
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: 5 * SizeConfig.widthMultiplier,
                      vertical: 3 * SizeConfig.heightMultiplier),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                          width: 50 * SizeConfig.widthMultiplier,
                          child: const Text(
                            'Life at school can feel quite overwhelming. ',
                            style: TextStyle(fontWeight: FontWeight.normal),
                          )),
                      SizedBox(
                        height: 2 * SizeConfig.heightMultiplier,
                      ),
                      SizedBox(
                          width: 70 * SizeConfig.widthMultiplier,
                          child: const Text(
                            'As alumni, we were in your shoes not too long ago (we’re old but not that old). We created tribespace to help you feel right at home and we think you’ll love it',
                            style: TextStyle(fontWeight: FontWeight.normal),
                          )),
                      SizedBox(
                        height: 2 * SizeConfig.heightMultiplier,
                      ),
                      SizedBox(
                          width: 70 * SizeConfig.widthMultiplier,
                          child: const Text(
                            'Spend a few minutes filling out your profile. But remember, the more you invest in it up front, the more you’ll get out of it.',
                            style: TextStyle(fontWeight: FontWeight.normal),
                          )),
                      SizedBox(
                        height: 2 * SizeConfig.heightMultiplier,
                      ),
                      SizedBox(
                          width: 70 * SizeConfig.widthMultiplier,
                          child: const Text(
                            'And no pressure, you can change all this information anytime.',
                            style: TextStyle(fontWeight: FontWeight.normal),
                          )),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 3 * SizeConfig.heightMultiplier,
              ),
              PrimaryButton(
                txt: 'Next',
                voidCallback: () {
                  Get.to(() => const BasicInformationPage());
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
