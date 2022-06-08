import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tribe_space/utils/size_config.dart';
import 'package:tribe_space/views/add_color/add_color_page.dart';
import 'package:tribe_space/widgets/primary_button.dart';

import '../../constants/colors.dart';
import '../all_set/all_set_page.dart';

class LastStepPage extends StatelessWidget {
  const LastStepPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 10 * SizeConfig.widthMultiplier,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 15 * SizeConfig.heightMultiplier,
            ),
            Align(
              alignment: Alignment.center,
              child: Text(
                'last step...',
                style: Theme.of(context).textTheme.headline4?.copyWith(
                    fontSize: 3.3 * SizeConfig.textMultiplier,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
            ),
            SizedBox(
              height: 2 * SizeConfig.heightMultiplier,
            ),
            Text(
              'Choose your current bandwidth. This helps ensure that your personal space is respected.',
              style: Theme.of(context)
                  .textTheme
                  .bodyText1
                  ?.copyWith(fontWeight: FontWeight.normal, color: greyColor),
            ),
            SizedBox(
              height: 3 * SizeConfig.heightMultiplier,
            ),
            Text(
              'You can change your status anytime.',
              style: Theme.of(context)
                  .textTheme
                  .bodyText1
                  ?.copyWith(fontWeight: FontWeight.normal, color: greyColor),
            ),
            SizedBox(
              height: 5 * SizeConfig.heightMultiplier,
            ),
            containertile(
              context,
              'Open to connecting',
              'Other members can see your profile and message you directly.',
              Colors.white,
              greyColor,
            ),
            SizedBox(
              height: 3 * SizeConfig.heightMultiplier,
            ),
            containertile(
              context,
              'Currently occupied',
              'Other members can only see your profile. All notifications are muted.',
              Color(0xfff6d7df),
              Colors.black,
            ),
            SizedBox(
              height: 10 * SizeConfig.heightMultiplier,
            ),
            PrimaryButton(
              txt: 'Next',
              voidCallback: () {
                Get.to(() => const AllsetPage());
              },
            ),
            SizedBox(
              height: 5 * SizeConfig.heightMultiplier,
            ),
            Align(
              alignment: Alignment.center,
              child: GestureDetector(
                onTap: () {},
                child: const Text(
                  'skip for now',
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w700,
                      color: Color(0xff17689F)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget containertile(BuildContext context, String title, String description,
      Color boxColor, Color txtColor) {
    return Container(
      height: 15 * SizeConfig.heightMultiplier,
      width: 80 * SizeConfig.widthMultiplier,
      decoration: BoxDecoration(boxShadow: const [
        BoxShadow(color: Colors.black26, blurRadius: 3, offset: Offset(0, 4))
      ], color: boxColor, borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: 10 * SizeConfig.widthMultiplier),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                  fontWeight: FontWeight.bold,
                  fontSize: 2 * SizeConfig.textMultiplier),
            ),
            SizedBox(
              height: 1 * SizeConfig.heightMultiplier,
            ),
            Text(
              description,
              style: Theme.of(context)
                  .textTheme
                  .bodyText1
                  ?.copyWith(fontWeight: FontWeight.normal, color: txtColor),
            ),
          ],
        ),
      ),
    );
  }
}
