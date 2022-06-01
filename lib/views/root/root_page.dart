import 'package:flutter/material.dart';
import 'package:tribe_space/constants/icons.dart';
import 'package:tribe_space/utils/size_config.dart';
import 'package:tribe_space/views/hub/hub_page.dart';
import 'package:tribe_space/views/incognito/incognito_page.dart';
import 'package:tribe_space/views/userchat/userchat_page.dart';

class RootPage extends StatefulWidget {
  const RootPage({Key? key}) : super(key: key);

  @override
  State<RootPage> createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  int selectedindex = 0;
  String? myIcon;
  List<Widget> list = [
    UserChatPage(),
    const HubPage(),
    IncognitoPage(),
    const Text('hi')
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: 3 * SizeConfig.widthMultiplier,
              vertical: 5 * SizeConfig.heightMultiplier),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: Icon(
                      Icons.arrow_back_ios_outlined,
                      size: 7 * SizeConfig.imageSizeMultiplier,
                    ),
                  ),
                  const Spacer(),
                  Row(
                    children: [
                      Container(
                        height: 5 * SizeConfig.heightMultiplier,
                        width: 9 * SizeConfig.widthMultiplier,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            shape: BoxShape.circle),
                        child: Image.asset(golfHole),
                      ),
                      SizedBox(
                        width: 3 * SizeConfig.widthMultiplier,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'WG golf in PHL',
                            style: Theme.of(context)
                                .textTheme
                                .subtitle1
                                ?.copyWith(fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(height: 3),
                          Text(
                            '@whartongolf90',
                            style: Theme.of(context)
                                .textTheme
                                .bodySmall
                                ?.copyWith(fontWeight: FontWeight.bold),
                          )
                        ],
                      )
                    ],
                  ),
                  const Spacer(),
                  const SizedBox(width: 20),
                  Image.asset(messageIcon),
                  const SizedBox(width: 20),
                  Image.asset(vectorIcon),
                  const Spacer(),
                ],
              ),
              SizedBox(
                height: 3 * SizeConfig.heightMultiplier,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    categoryHead(
                      0,
                      selectedindex == 0 ? multipleChatfill : multipleChat,
                      'chat',
                      false,
                      '0',
                    ),
                    categoryHead(
                      1,
                      selectedindex == 1 ? moodHappyfill : moodHappy,
                      'hub',
                      selectedindex == 0 || selectedindex == 3 ? false : true,
                      '7',
                    ),
                    categoryHead(
                      2,
                      selectedindex == 2 ? layersHidefill : layersHide,
                      'incognito',
                      selectedindex == 2 ? false : true,
                      '7',
                    ),
                    categoryHead(
                      3,
                      selectedindex == 3 ? womenGlassesfill : womenGlasses,
                      'people',
                      false,
                      '0',
                    ),
                  ],
                ),
              ),
              const Divider(),
              Expanded(child: list[selectedindex])
            ],
          ),
        ),
      ),
    );
  }

  Widget categoryHead(int index, String icon, String text, bool isNotification,
      String numberofnotificaiton) {
    return GestureDetector(
        onTap: () {
          setState(() {
            selectedindex = index;
          });
        },
        child: Column(
          //crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 6 * SizeConfig.heightMultiplier,
              width: 15 * SizeConfig.widthMultiplier,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset(
                      icon,
                      // color: selectedindex == index ? Colors.amber : Colors.grey,
                    ),
                  ),
                  selectedindex == index
                      ? const SizedBox()
                      : isNotification
                          ? Positioned(
                              top: -10,
                              right: -0,
                              child: Container(
                                height: 4.5 * SizeConfig.heightMultiplier,
                                width: 4.5 * SizeConfig.widthMultiplier,
                                decoration: const BoxDecoration(
                                    color: Color(0xffD96363),
                                    shape: BoxShape.circle),
                                child: Center(
                                    child: Text(numberofnotificaiton,
                                        style: const TextStyle(
                                            color: Colors.white))),
                              ),
                            )
                          : const SizedBox(),
                ],
              ),
            ),
            // SizedBox(
            //   height: 0.5 * SizeConfig.heightMultiplier,
            // ),
            Text(
              text,
              style: Theme.of(context).textTheme.bodyText1?.copyWith(
                  color: selectedindex == index ? Colors.black : Colors.grey),
            ),
          ],
        ));
  }
}
