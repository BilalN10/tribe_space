import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tribe_space/utils/size_config.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:tribe_space/views/people/people_page.dart';
import 'package:tribe_space/views/tribe_code/tribe_code_page.dart';
import 'package:tribe_space/widgets/primary_button.dart';
import '../../constants/colors.dart';
import '../widget/custom_switch_button.dart';

class TribeDescription extends StatefulWidget {
  const TribeDescription({Key? key}) : super(key: key);

  @override
  State<TribeDescription> createState() => _TribeDescriptionState();
}

class _TribeDescriptionState extends State<TribeDescription> {
  String _enteredText = '';
  bool status = false;
  bool approve = false;
  bool allow = false;
  bool automatically = false;

  final TextEditingController tagController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: 10 * SizeConfig.widthMultiplier),
          child: Center(
            child: Column(
              children: [
                Center(
                    child: SizedBox(height: 3 * SizeConfig.heightMultiplier)),
                const Align(
                    alignment: Alignment.centerLeft,
                    child: Icon(Icons.arrow_back_ios)),
                SizedBox(
                  height: 5 * SizeConfig.heightMultiplier,
                ),
                SizedBox(
                    height: 25 * SizeConfig.heightMultiplier,
                    child: Image.asset('assets/images/man_play.png')),
                textfieldTile(),
                Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(
                      onPressed: () {
                        showModalBottomSheet<dynamic>(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            // isScrollControlled: true,
                            context: context,
                            builder: (BuildContext bc) {
                              return Wrap(children: <Widget>[
                                StatefulBuilder(builder: (BuildContext context,
                                    StateSetter
                                        setState /*You can rename this!*/) {
                                  return Container(
                                    height: 65 * SizeConfig.heightMultiplier,
                                    decoration: const BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(25.0),
                                            topRight: Radius.circular(25.0))),
                                    child: Align(
                                      alignment: Alignment.center,
                                      child: SingleChildScrollView(
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
                                                height: 16 *
                                                    SizeConfig.heightMultiplier,
                                                width: 90 *
                                                    SizeConfig.widthMultiplier,
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10),
                                                    border: Border.all(
                                                        color: Colors.grey)),
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.all(8.0),
                                                  child: TextField(
                                                    onChanged: (value) {
                                                      setState(() {
                                                        _enteredText = value;
                                                      });
                                                    },
                                                    maxLines: 7,
                                                    //maxLength: 200,
                                                    decoration:
                                                        const InputDecoration(
                                                      hintText: 'Description',
                                                      // labelText: 'Your Name',
                                                      border: InputBorder.none,

                                                      // Display the number of entered characters
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              height: 3 *
                                                  SizeConfig.heightMultiplier,
                                            ),
                                            Center(
                                              child: Container(
                                                height: 16 *
                                                    SizeConfig.heightMultiplier,
                                                width: 90 *
                                                    SizeConfig.widthMultiplier,
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10),
                                                    border: Border.all(
                                                        color: Colors.grey)),
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.all(8.0),
                                                  child: TextField(
                                                    onChanged: (value) {
                                                      setState(() {
                                                        _enteredText = value;
                                                      });
                                                    },
                                                    maxLines: 7,
                                                    //maxLength: 200,
                                                    decoration:
                                                        const InputDecoration(
                                                      hintText: 'Norms',
                                                      // labelText: 'Your Name',
                                                      border: InputBorder.none,

                                                      // Display the number of entered characters
                                                    ),
                                                  ),
                                                ),
                                              ),
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
                                    ),
                                  );
                                })
                              ]);
                            });
                      },
                      child: const Text(
                        '+ add description',
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w700,
                            color: Color(0xff17689F)),
                      ),
                    )),
                descriptionTile('Require Penn key validation', status, (p0) {
                  setState(() {
                    status = p0;
                  });
                }),
                descriptionTile(
                    'Approve membership request individually', approve, (p0) {
                  setState(() {
                    approve = p0;
                  });
                }),
                descriptionTile('Allow others to send announcements', allow,
                    (p0) {
                  setState(() {
                    allow = p0;
                  });
                }),
                descriptionTile(
                    'Automatically delete group after (x) days', automatically,
                    (p0) {
                  setState(() {
                    automatically = p0;
                  });
                }),
                SizedBox(
                  height: 5 * SizeConfig.heightMultiplier,
                ),
                PrimaryButton(
                  txt: 'Create',
                  voidCallback: () {
                    Get.to(() => const TribeCodePage());
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget descriptionTile(
      String description, bool boolValue, Function(bool) onChange) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: 45 * SizeConfig.widthMultiplier,
            child: Text(
              description,
              maxLines: 2,
              style: TextStyle(fontWeight: FontWeight.bold, color: Colors.grey),
            ),
          ),
          CustomSwitch(
            value: boolValue,
            onChanged: onChange,
          ),
        ],
      ),
    );
  }

  Widget textfieldTile() {
    return Container(
      height: 9 * SizeConfig.heightMultiplier,
      width: 90 * SizeConfig.widthMultiplier,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: greyColor)),
      child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: 2 * SizeConfig.widthMultiplier,
            vertical: 1 * SizeConfig.heightMultiplier),
        child: TextField(
          onChanged: (value) {
            setState(() {
              //  _enteredText = value;
            });
          },
          cursorColor: primaryColor,
          maxLines: 2,
          maxLength: 50,
          decoration: const InputDecoration(
            hintText: 'Headline',
            hintStyle: const TextStyle(color: greyColor),
            // labelText: 'Your Name',
            border: InputBorder.none,

            // Display the number of entered characters
            //counterText: '${_enteredText.length.toString()} /50'
          ),
        ),
      ),
    );
  }
}
