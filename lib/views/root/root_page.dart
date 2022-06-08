import 'package:flutter/material.dart';
import 'package:tribe_space/constants/icons.dart';
import 'package:tribe_space/utils/size_config.dart';
import 'package:tribe_space/views/files/files_page.dart';
import 'package:tribe_space/views/hub/hub_page.dart';
import 'package:tribe_space/views/incognito/incognito_page.dart';
import 'package:tribe_space/views/people/people_page.dart';
import 'package:tribe_space/views/people/photo/photo_page.dart';
import 'package:tribe_space/views/topics/topics_page.dart';
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
    const PeoplePage(),
    const TopicsPage(),
    PhotoPage(),
    FilesPage()
  ];

  List<String> titleList = [
    'chat',
    'stories',
    'incognito',
    'people',
    'topics',
    'photos',
    'files'
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

              Padding(
                padding: EdgeInsets.only(left: 5 * SizeConfig.widthMultiplier),
                child: Container(
                  height: 6 * SizeConfig.heightMultiplier,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: titleList.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 3 * SizeConfig.widthMultiplier),
                          child: categoryHead(
                            index,
                            titleList[index],
                            selectedindex == 0 || selectedindex == 3
                                ? false
                                : true,
                            '7',
                          ),
                        );
                      }),
                ),
              ),
              // Padding(
              //   padding: const EdgeInsets.symmetric(horizontal: 20),
              //   child:
              //   Row(
              //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //     children: [
              //       // categoryHead(
              //       //   0,
              //       //   'chat',
              //       //   false,
              //       //   '0',
              //       // ),
              //       // categoryHead(
              //       //   1,
              //       //   'stories',
              //       //   selectedindex == 0 || selectedindex == 3 ? false : true,
              //       //   '7',
              //       // ),
              //       // categoryHead(
              //       //   2,
              //       //   'incognito',
              //       //   selectedindex == 2 ? false : true,
              //       //   '7',
              //       // ),
              //       // categoryHead(
              //       //   3,
              //       //   'people',
              //       //   false,
              //       //   '0',
              //       // ),
              //     ],
              //   ),
              // ),
              Container(
                height: 1,
                width: 100 * SizeConfig.widthMultiplier,
                decoration: BoxDecoration(color: Colors.grey.shade300),
              ),
              // const Divider(),
              Expanded(child: list[selectedindex])
            ],
          ),
        ),
      ),
    );
  }

  Widget categoryHead(int index, String text, bool isNotification,
      String numberofnotificaiton) {
    return GestureDetector(
        onTap: () {
          setState(() {
            selectedindex = index;
          });
        },
        child: SizedBox(
          height: 6 * SizeConfig.heightMultiplier,
          child: Stack(
            //crossAxisAlignment: CrossAxisAlignment.center,
            // mainAxisAlignment: MainAxisAlignment.end,
            children: [
              //notification
              SizedBox(
                height: 2 * SizeConfig.heightMultiplier,
                width: 17 * SizeConfig.widthMultiplier,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    index == 1 || index == 2
                        ? Positioned(
                            top: -10,
                            right: 30,
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
                        : const SizedBox()
                  ],
                ),
              ),
              // SizedBox(
              //   height: 0.5 * SizeConfig.heightMultiplier,
              // ),
              Positioned(
                top: 3 * SizeConfig.heightMultiplier,
                child: Text(
                  text,
                  style: Theme.of(context).textTheme.bodyText1?.copyWith(
                      fontWeight: FontWeight.bold,
                      fontSize: 1.8 * SizeConfig.textMultiplier,
                      color: selectedindex == index
                          ? const Color(0xffD96363)
                          : Colors.grey),
                ),
              ),
              // const SizedBox(height: 6),
              Positioned(
                bottom: -1,
                child: Container(
                  height: 3,
                  width: 7 * SizeConfig.widthMultiplier,
                  decoration: BoxDecoration(
                      color: selectedindex == index
                          ? Colors.red
                          : Colors.transparent,
                      borderRadius: BorderRadius.circular(20)),
                ),
              ),
            ],
          ),
        ));
  }
}
