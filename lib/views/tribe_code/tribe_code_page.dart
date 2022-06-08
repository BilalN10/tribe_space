import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tribe_space/constants/colors.dart';
import 'package:tribe_space/utils/size_config.dart';
import 'package:tribe_space/views/root/root_page.dart';
import 'package:tribe_space/widgets/primary_button.dart';

class TribeCodePage extends StatelessWidget {
  const TribeCodePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: 6 * SizeConfig.widthMultiplier),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 2 * SizeConfig.heightMultiplier,
                ),
                const Align(
                    alignment: Alignment.centerLeft,
                    child: Icon(Icons.arrow_back_ios)),
                SizedBox(
                  height: 8 * SizeConfig.heightMultiplier,
                ),
                Image.asset(
                  'assets/images/marketing.png',
                  height: 25 * SizeConfig.heightMultiplier,
                ),
                SizedBox(
                  height: 2 * SizeConfig.heightMultiplier,
                ),
                SizedBox(
                  // color: Colors.red,
                  width: 60 * SizeConfig.widthMultiplier,
                  child: Text(
                    'woohoo!  your tribe is ready.',
                    style: Theme.of(context).textTheme.headline4?.copyWith(
                        fontWeight: FontWeight.w500, color: Colors.black),
                  ),
                ),
                SizedBox(
                  height: 1.5 * SizeConfig.heightMultiplier,
                ),
                SizedBox(
                  width: 60 * SizeConfig.widthMultiplier,
                  child: const Text(
                    'Share the code with others to start connecting.',
                    style: TextStyle(
                        color: greyColor, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 3 * SizeConfig.heightMultiplier,
                ),
                Container(
                  height: 15 * SizeConfig.heightMultiplier,
                  width: 80 * SizeConfig.widthMultiplier,
                  decoration: BoxDecoration(
                      boxShadow: const [
                        BoxShadow(
                            color: Colors.black26,
                            blurRadius: 3,
                            offset: Offset(0, 4))
                      ],
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)),
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: 8 * SizeConfig.widthMultiplier,
                        vertical: 2 * SizeConfig.heightMultiplier),
                    child: Column(
                      children: [
                        Align(
                          alignment: Alignment.topRight,
                          child: Image.asset('assets/icons/share.png'),
                        ),
                        Text(
                          '123456',
                          style: Theme.of(context)
                              .textTheme
                              .headline3
                              ?.copyWith(
                                  fontWeight: FontWeight.bold,
                                  color: primaryColor),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 5 * SizeConfig.heightMultiplier,
                ),
                SizedBox(
                  width: 90 * SizeConfig.widthMultiplier,
                  child: PrimaryButton(
                    txt: 'Continue',
                    voidCallback: () {
                      Get.to(() => const RootPage());
                    },
                  ),
                ),
                SizedBox(
                  height: 3 * SizeConfig.heightMultiplier,
                ),
                Align(
                  alignment: Alignment.center,
                  child: GestureDetector(
                    onTap: () {},
                    child: const Text(
                      'create own code instead',
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
        ),
      ),
    );
  }
}
