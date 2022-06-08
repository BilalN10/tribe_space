import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tribe_space/constants/colors.dart';
import 'package:tribe_space/utils/size_config.dart';
import 'package:tribe_space/views/tribe_description/tribe_decription_page.dart';

class Selectionpage extends StatelessWidget {
  const Selectionpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 20 * SizeConfig.heightMultiplier,
            ),
            SizedBox(
              height: 25 * SizeConfig.heightMultiplier,
              width: 70 * SizeConfig.widthMultiplier,
              child: Image.asset('assets/images/sammy.png'),
            ),
            SizedBox(
              height: 4 * SizeConfig.heightMultiplier,
            ),
            containertile(context, 'create new', 'create a new tribe on campus',
                () {
              Get.to(() => const TribeDescription());
            }),
            SizedBox(
              height: 4 * SizeConfig.heightMultiplier,
            ),
            containertile(context, 'join tribe',
                'select this if you already have a code', () {})
          ],
        ),
      ),
    );
  }

  Widget containertile(BuildContext context, String title, String description,
      VoidCallback voidCallback) {
    return GestureDetector(
      onTap: voidCallback,
      child: Container(
        height: 15 * SizeConfig.heightMultiplier,
        width: 80 * SizeConfig.widthMultiplier,
        decoration: BoxDecoration(boxShadow: const [
          BoxShadow(color: Colors.black26, blurRadius: 3, offset: Offset(0, 4))
        ], color: Colors.white, borderRadius: BorderRadius.circular(10)),
        child: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: 10 * SizeConfig.widthMultiplier),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                title,
                style: Theme.of(context)
                    .textTheme
                    .headline4
                    ?.copyWith(fontWeight: FontWeight.bold, color: Colors.black
                        // fontSize: 3 * SizeConfig.textMultiplier
                        ),
              ),
              SizedBox(
                height: 1 * SizeConfig.heightMultiplier,
              ),
              Text(
                description,
                style: Theme.of(context)
                    .textTheme
                    .bodyText1
                    ?.copyWith(fontWeight: FontWeight.normal, color: greyColor),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
