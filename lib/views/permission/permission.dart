import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tribe_space/constants/colors.dart';
import 'package:tribe_space/utils/size_config.dart';
import 'package:tribe_space/welcome/welcome_page.dart';

import '../../constants/images.dart';

class PermissionPage extends StatelessWidget {
  const PermissionPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: 0 * SizeConfig.widthMultiplier),
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 12 * SizeConfig.heightMultiplier,
              ),
              Image.asset(
                linkdin,
                height: 50 * SizeConfig.imageSizeMultiplier,
              ),
              Container(
                height: 40 * SizeConfig.heightMultiplier,
                width: 80 * SizeConfig.widthMultiplier,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  // color: Colors.white,
                ),
                //color: Colors.amber,
                //10 * SizeConfig.widthMultiplier,

                child: Stack(
                  children: [
                    Positioned(
                      bottom: 0,
                      child: Container(
                        height: 35 * SizeConfig.heightMultiplier,
                        width: 80 *
                            SizeConfig
                                .widthMultiplier, //10 * SizeConfig.widthMultiplier,
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
                              vertical: 6 * SizeConfig.heightMultiplier,
                              horizontal: 9 * SizeConfig.widthMultiplier),
                          child: Column(
                            children: [
                              SizedBox(
                                height: 1 * SizeConfig.heightMultiplier,
                              ),
                              Row(
                                children: [
                                  Text(
                                    'tribespace ',
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyLarge
                                        ?.copyWith(
                                            fontWeight: FontWeight.w700,
                                            fontSize:
                                                2 * SizeConfig.textMultiplier),
                                  ),
                                  Text(
                                    'would like to:',
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyLarge
                                        ?.copyWith(
                                            fontSize:
                                                1.8 * SizeConfig.textMultiplier,
                                            fontWeight: FontWeight.normal),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 3 * SizeConfig.heightMultiplier,
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    '1. ',
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyLarge
                                        ?.copyWith(
                                            fontSize:
                                                2 * SizeConfig.textMultiplier,
                                            fontWeight: FontWeight.normal),
                                  ),
                                  Flexible(
                                    child: Text(
                                      'Use your basic profile including your name, photo, headline, and current positions',
                                      maxLines: 4,
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyLarge
                                          ?.copyWith(
                                              fontSize:
                                                  2 * SizeConfig.textMultiplier,
                                              fontWeight: FontWeight.normal),
                                    ),
                                  )
                                ],
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    '2. ',
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyLarge
                                        ?.copyWith(
                                            fontSize:
                                                2 * SizeConfig.textMultiplier,
                                            fontWeight: FontWeight.normal),
                                  ),
                                  Flexible(
                                    child: Text(
                                      'Use the primary email associated with your LinkedIn account',
                                      maxLines: 4,
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyLarge
                                          ?.copyWith(
                                              fontSize:
                                                  2 * SizeConfig.textMultiplier,
                                              fontWeight: FontWeight.normal),
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        const CircleAvatar(
                          radius: 40,
                          backgroundImage:
                              AssetImage('assets/images/man_pic.png'),
                        ),
                        Image.asset(
                          splash,
                          height: 10 * SizeConfig.heightMultiplier,
                        )
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 2 * SizeConfig.heightMultiplier,
              ),
              Align(
                alignment: Alignment.center,
                child: GestureDetector(
                  onTap: () {},
                  child: const Text(
                    'Not you?',
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w700,
                        color: Color(0xff17689F)),
                  ),
                ),
              ),
              SizedBox(
                height: 2 * SizeConfig.heightMultiplier,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  customButton(context, 'Cancel', Color(0xffC4C4C4),
                      Colors.black, () {}),
                  customButton(context, 'Allow', primaryColor, Colors.white,
                      () {
                    Get.to(() => const WelcomePage());
                  })
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget customButton(BuildContext context, String text, Color color,
      Color textColor, VoidCallback function) {
    return GestureDetector(
      onTap: function,
      child: Container(
        alignment: Alignment.center,
        height: 6 * SizeConfig.heightMultiplier,
        width: 35 * SizeConfig.widthMultiplier,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Text(
          text,
          style: Theme.of(context).textTheme.bodyLarge?.copyWith(
              color: textColor, fontSize: 2 * SizeConfig.textMultiplier),
        ),
      ),
    );
  }
}
