import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tribe_space/controller/add_tag_controller.dart';
import 'package:tribe_space/utils/size_config.dart';
import 'package:tribe_space/views/career_goals/career_goals_page.dart';
import 'package:tribe_space/views/root/root_page.dart';
import 'package:tribe_space/widgets/primary_button.dart';

// ignore: must_be_immutable
class InterestPage extends StatefulWidget {
  const InterestPage({Key? key}) : super(key: key);

  @override
  State<InterestPage> createState() => _InterestPageState();
}

class _InterestPageState extends State<InterestPage> {
  final TextEditingController tagController = TextEditingController();

  TagController tagsController = Get.put(TagController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(
                horizontal: 8 * SizeConfig.widthMultiplier),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 6 * SizeConfig.heightMultiplier),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    'share your interests',
                    style: Theme.of(context).textTheme.headline4?.copyWith(
                        fontSize: 3.3 * SizeConfig.textMultiplier,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                ),
                SizedBox(height: 1 * SizeConfig.heightMultiplier),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                      'These are visible on your profile and help you find stuff in common',
                      style: Theme.of(context)
                          .textTheme
                          .bodyText2!
                          .copyWith(color: Colors.grey)),
                ),
                SizedBox(height: 1.5 * SizeConfig.heightMultiplier),
                Text('Category',
                    style: Theme.of(context).textTheme.caption!.copyWith(
                        color: Colors.black, fontWeight: FontWeight.bold)),
                SizedBox(height: 1.5 * SizeConfig.heightMultiplier),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: const [
                        CategoryTile(
                          title: 'diversity &\ninclusion',
                          color: Colors.white,
                        ),
                        CategoryTile(
                          title: 'hedge\nfunds',
                          color: Colors.white,
                        ),
                      ],
                    ),
                    SizedBox(height: 2 * SizeConfig.heightMultiplier),
                    const CategoryTile(
                      title: 'climate\nchange',
                      color: Color(0xffF6D7DF),
                    ),
                    SizedBox(height: 1.5 * SizeConfig.heightMultiplier),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text('Category',
                          style: Theme.of(context).textTheme.caption!.copyWith(
                              color: Colors.black,
                              fontWeight: FontWeight.bold)),
                    ),
                    SizedBox(height: 1.5 * SizeConfig.heightMultiplier),
                    Row(
                      children: [
                        const CategoryTile(
                            title: 'ice\nskating', color: Colors.white),
                        SizedBox(width: 10 * SizeConfig.widthMultiplier),
                        Column(
                          children: [
                            const CategoryTile(
                              title: 'impact\ninvesting',
                              color: Color(0xffF6D7DF),
                            ),
                            SizedBox(height: 4 * SizeConfig.heightMultiplier),
                            const CategoryTile(
                                title: 'women in\npower', color: Colors.white),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 4 * SizeConfig.heightMultiplier),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: GestureDetector(
                        onTap: () {
                          showModalBottomSheet<dynamic>(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              // isScrollControlled: true,
                              context: context,
                              builder: (BuildContext bc) {
                                return Wrap(children: <Widget>[
                                  StatefulBuilder(builder: (BuildContext
                                          context,
                                      StateSetter
                                          setState /*You can rename this!*/) {
                                    return Container(
                                      height: 60 * SizeConfig.heightMultiplier,
                                      decoration: const BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(25.0),
                                              topRight: Radius.circular(25.0))),
                                      child: Align(
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.end,
                                          children: [
                                            SizedBox(
                                                height: 2 *
                                                    SizeConfig
                                                        .heightMultiplier),
                                            Container(
                                              height: 5,
                                              width: 10 *
                                                  SizeConfig.widthMultiplier,
                                              decoration: BoxDecoration(
                                                  color:
                                                      const Color(0xffE2E2E2),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          12)),
                                            ),
                                            SizedBox(
                                                height: 4 *
                                                    SizeConfig
                                                        .heightMultiplier),
                                            const Divider(),
                                            SizedBox(
                                                height: 2 *
                                                    SizeConfig
                                                        .heightMultiplier),
                                            Center(
                                              child: Container(
                                                height: 7 *
                                                    SizeConfig.heightMultiplier,
                                                width: 90 *
                                                    SizeConfig.widthMultiplier,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(12),
                                                  border: Border.all(
                                                      color: Colors.grey),
                                                ),
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.all(8.0),
                                                  child: TextFormField(
                                                    onChanged: (val) {
                                                      setState(() {
                                                        // ignore: avoid_print
                                                        print(
                                                            '${tagController.text},');
                                                        if (val.contains(',')) {
                                                          tagsController.addTag
                                                              .add(tagController
                                                                  .text);
                                                          tagController.clear();
                                                          // ignore: avoid_print
                                                          print(tagsController
                                                              .addTag.length);

                                                          // ignore: avoid_print
                                                          print('add');
                                                        }
                                                      });
                                                    },
                                                    controller: tagController,
                                                    decoration: InputDecoration(
                                                        errorBorder:
                                                            InputBorder.none,
                                                        enabledBorder:
                                                            InputBorder.none,
                                                        focusedBorder:
                                                            InputBorder.none,
                                                        disabledBorder:
                                                            InputBorder.none,
                                                        hintText:
                                                            'press return after each to add multiple',
                                                        hintStyle: Theme.of(
                                                                context)
                                                            .textTheme
                                                            .subtitle1!
                                                            .copyWith(
                                                                color: Colors
                                                                    .grey)),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Expanded(
                                              child: Obx(() => ListView.builder(
                                                    scrollDirection:
                                                        Axis.horizontal,
                                                    itemCount: tagsController
                                                        .addTag.length,
                                                    itemBuilder:
                                                        (BuildContext context,
                                                            int index) {
                                                      return Column(
                                                        children: [
                                                          SizedBox(
                                                            width: 30 *
                                                                SizeConfig
                                                                    .widthMultiplier,
                                                            child: Stack(
                                                              children: [
                                                                Stack(
                                                                  children: [
                                                                    SizedBox(
                                                                      height: 7 *
                                                                          SizeConfig
                                                                              .heightMultiplier,
                                                                      width: 30 *
                                                                          SizeConfig
                                                                              .widthMultiplier,
                                                                      child:
                                                                          Padding(
                                                                        padding:
                                                                            const EdgeInsets.all(10.0),
                                                                        child: CategoryTile(
                                                                            title:
                                                                                tagsController.addTag[index],
                                                                            color: Colors.white),
                                                                      ),
                                                                    ),
                                                                    Positioned(
                                                                      top: -5,
                                                                      right: 0,
                                                                      child:
                                                                          Container(
                                                                              height: 6 *
                                                                                  SizeConfig
                                                                                      .heightMultiplier,
                                                                              width: 6 *
                                                                                  SizeConfig
                                                                                      .widthMultiplier,
                                                                              decoration: const BoxDecoration(color: Color(0xffD1375F), shape: BoxShape.circle, boxShadow: [
                                                                                BoxShadow(color: Colors.black12, blurRadius: 18)
                                                                              ]),
                                                                              child: Center(
                                                                                child: GestureDetector(
                                                                                  onTap: () {
                                                                                    tagsController.addTag.removeAt(index);
                                                                                  },
                                                                                  child: const Icon(
                                                                                    Icons.close,
                                                                                    color: Colors.white,
                                                                                    size: 15,
                                                                                  ),
                                                                                ),
                                                                              )),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ],
                                                      );
                                                    },
                                                  )),
                                            ),
                                            Padding(
                                              padding: EdgeInsets.symmetric(
                                                  vertical: 2 *
                                                      SizeConfig
                                                          .heightMultiplier,
                                                  horizontal: 6 *
                                                      SizeConfig
                                                          .widthMultiplier),
                                              child: GestureDetector(
                                                onTap: () {
                                                  Get.back();
                                                },
                                                child: Container(
                                                    height: 12 *
                                                        SizeConfig
                                                            .heightMultiplier,
                                                    width: 12 *
                                                        SizeConfig
                                                            .widthMultiplier,
                                                    decoration:
                                                        const BoxDecoration(
                                                            color: Color(
                                                                0xffD1375F),
                                                            shape: BoxShape
                                                                .circle),
                                                    child: Center(
                                                      child: Text('>',
                                                          style: Theme.of(
                                                                  context)
                                                              .textTheme
                                                              .headline4!
                                                              .copyWith(
                                                                  color: Colors
                                                                      .white,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600)),
                                                    )),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    );
                                  })
                                ]);
                              });
                        },
                        child: Text(
                          '+ add your own',
                          style: Theme.of(context)
                              .textTheme
                              .subtitle1!
                              .copyWith(
                                  color: const Color(0xff17689F),
                                  fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 5 * SizeConfig.heightMultiplier,
                    ),
                    PrimaryButton(
                      txt: 'Next',
                      voidCallback: () {
                        Get.to(() => const CareerGoalsPage());
                      },
                    ),
                    SizedBox(
                      height: 3 * SizeConfig.heightMultiplier,
                    ),
                    GestureDetector(
                      onTap: () {
                        Get.to(() => const RootPage());
                      },
                      child: Text(
                        'skip for now',
                        style: Theme.of(context).textTheme.subtitle1!.copyWith(
                            color: const Color(0xff17689F),
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CategoryTile extends StatelessWidget {
  const CategoryTile({
    required this.title,
    required this.color,
    Key? key,
  }) : super(key: key);

  final String title;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
        // height: 6.5 * SizeConfig.heightMultiplier,
        width: 30 * SizeConfig.widthMultiplier,
        decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(12),
            boxShadow: const [
              BoxShadow(
                  color: Colors.black26, blurRadius: 3, offset: Offset(0, 7))
            ]),
        child: Padding(
          padding: EdgeInsets.all(1 * SizeConfig.heightMultiplier),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Text(title,
                    style: Theme.of(context)
                        .textTheme
                        .subtitle2!
                        .copyWith(color: Colors.black)),
              ),
              // const SizedBox(height: 5),
            ],
          ),
        ));
  }
}
