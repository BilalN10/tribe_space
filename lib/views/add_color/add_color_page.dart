import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:tribe_space/constants/colors.dart';
import 'package:tribe_space/widgets/name_field.dart';
import 'package:tribe_space/widgets/primary_button.dart';

import '../../utils/size_config.dart';
import '../interest/interest_page.dart';

class AddColorPage extends StatefulWidget {
  AddColorPage({Key? key}) : super(key: key);

  @override
  State<AddColorPage> createState() => _AddColorPageState();
}

class _AddColorPageState extends State<AddColorPage> {
  TextEditingController controller = TextEditingController();
  String _enteredText = '';
  List<String> imageList = [
    'assets/images/old_man.png',
    '',
    '',
    '',
    '',
    '',
  ];
  List<Image> list = [];
  @override
  void initState() {
    super.initState();
  }

  File? image;
  Image? myImage;
  Future pickImage(ImageSource imageSource) async {
    try {
      final image = await ImagePicker().pickImage(source: imageSource);
      if (image == null) {}
      final imageTemporary = File(image!.path);
      setState(() {
        this.image = imageTemporary;
      });
      await convertFileToImage(File(image.path));
    } catch (e) {
      // ignore: avoid_print
      print('failed to pick image: $e');
    }
  }

  Future<Image> convertFileToImage(File picture) async {
    List<int> imageBase64 = picture.readAsBytesSync();
    String imageAsString = base64Encode(imageBase64);
    Uint8List uint8list = base64.decode(imageAsString);
    Image image = Image.memory(uint8list);
    setState(() {
      myImage = image;
      list.add(myImage!);
    });
    print('MY image is $myImage');
    return image;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF5F5F5),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 10 * SizeConfig.widthMultiplier,
          ),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 10 * SizeConfig.heightMultiplier,
                ),
                Text(
                  'let’s add some color',
                  style: Theme.of(context).textTheme.headline4?.copyWith(
                      fontSize: 3.3 * SizeConfig.textMultiplier,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
                SizedBox(
                  height: 2 * SizeConfig.heightMultiplier,
                ),
                Text(
                  'Add some photos or videos',
                  style: Theme.of(context).textTheme.bodyText1?.copyWith(),
                ),
                SizedBox(
                  height: 1 * SizeConfig.heightMultiplier,
                ),
                SizedBox(
                  height: 25 * SizeConfig.heightMultiplier,
                  child: GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 3,
                            childAspectRatio: 2 / 2,
                            crossAxisSpacing: 2,
                            mainAxisSpacing: 3),
                    itemCount: imageList.length,
                    itemBuilder: (BuildContext context, int index) {
                      if (index == imageList.length - 1) {
                        return GestureDetector(
                          onTap: () {
                            pickImage(ImageSource.gallery);
                            print('yes');
                          },
                          child: Container(
                            height: 20 * SizeConfig.heightMultiplier,
                            width: 30 * SizeConfig.widthMultiplier,
                            alignment: Alignment.center,
                            //  child: // Text('name'),
                            decoration: BoxDecoration(
                                // border: Border.all(color: Colors.black),
                                // color: Colors.amber,
                                borderRadius: BorderRadius.circular(15)),
                            child: Stack(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    alignment: Alignment.center,
                                    //  child: // Text('name'),
                                    decoration: BoxDecoration(
                                        border: Border.all(color: Colors.grey),
                                        // color: Colors.amber,
                                        borderRadius:
                                            BorderRadius.circular(15)),
                                    child: image != null && list.length > index
                                        ? Container(
                                            alignment: Alignment.center,
                                            //  child: // Text('name'),
                                            decoration: BoxDecoration(
                                                border: Border.all(
                                                    color: Colors.grey),
                                                image: DecorationImage(
                                                    image: list[index].image,
                                                    fit: BoxFit.cover),
                                                color: Colors.amber,
                                                borderRadius:
                                                    BorderRadius.circular(15)),
                                          )
                                        : SizedBox(),
                                  ),
                                ),
                                Positioned(
                                  bottom: 0,
                                  right: 0,
                                  child: GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        imageList.add('');
                                      });
                                    },
                                    child: Container(
                                      height: 4 * SizeConfig.heightMultiplier,
                                      width: 8 * SizeConfig.widthMultiplier,
                                      decoration: const BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: primaryColor),
                                      child: const Icon(Icons.add,
                                          color: Colors.white),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      } else {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: GestureDetector(
                            onTap: () {
                              pickImage(ImageSource.gallery);
                            },
                            child: Container(
                                alignment: Alignment.center,
                                //  child: // Text('name'),
                                decoration: BoxDecoration(
                                    border: Border.all(color: Colors.grey),
                                    borderRadius: BorderRadius.circular(15)),
                                child: image != null && list.length > index
                                    ? Container(
                                        alignment: Alignment.center,
                                        //  child: // Text('name'),
                                        decoration: BoxDecoration(
                                            border:
                                                Border.all(color: Colors.grey),
                                            image: DecorationImage(
                                                image: list[index].image,
                                                fit: BoxFit.cover),
                                            color: Colors.amber,
                                            borderRadius:
                                                BorderRadius.circular(15)),
                                      )
                                    : SizedBox()
                                //: Image.asset('assets/images/pic.jpg'),

                                ),
                          ),
                        );
                      }
                    },
                  ),
                ),
                SizedBox(
                  height: 2 * SizeConfig.heightMultiplier,
                ),
                Text(
                  'Say a little about yourself',
                  style: Theme.of(context).textTheme.bodyText1?.copyWith(),
                ),
                SizedBox(
                  height: 2 * SizeConfig.heightMultiplier,
                ),
                Container(
                  height: 16 * SizeConfig.heightMultiplier,
                  width: 90 * SizeConfig.widthMultiplier,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.grey)),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      onChanged: (value) {
                        setState(() {
                          _enteredText = value;
                        });
                      },
                      maxLines: 7,
                      maxLength: 200,
                      decoration: InputDecoration(
                          hintText:
                              '2-time marathon runner looking for co-founders in the nutrition space! ',
                          // labelText: 'Your Name',
                          border: InputBorder.none,

                          // Display the number of entered characters
                          counterText:
                              '${_enteredText.length.toString()} /200'),
                    ),
                  ),
                ),
                SizedBox(
                  height: 2 * SizeConfig.heightMultiplier,
                ),
                Text(
                  'Say a little about yourself',
                  style: Theme.of(context)
                      .textTheme
                      .bodyText1
                      ?.copyWith(fontSize: 1.8 * SizeConfig.textMultiplier),
                ),
                SizedBox(
                  height: 5 * SizeConfig.heightMultiplier,
                ),
                Center(
                  child: Column(
                    children: [
                      containerTile(context, 'Unusual skills',
                          'I’ve got a great Santa laugh'),
                      SizedBox(
                        height: 3 * SizeConfig.heightMultiplier,
                      ),
                      containerTile(
                          context,
                          'In my free time you’ll find me doing',
                          'Catching up on sleep'),
                      SizedBox(
                        height: 3 * SizeConfig.heightMultiplier,
                      ),
                      containerTile(context, 'The dumbest way I’ve been hurt',
                          'Attempting to adjust my bra, lost my grip, punched myself in the face'),
                    ],
                  ),
                ),
                SizedBox(
                  height: 5 * SizeConfig.heightMultiplier,
                ),
                PrimaryButton(
                  txt: 'Next',
                  voidCallback: () {
                    Get.to(() => const InterestPage());
                  },
                ),
                SizedBox(
                  height: 5 * SizeConfig.heightMultiplier,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget containerTile(BuildContext context, String title, String description) {
    return Container(
      height: 11 * SizeConfig.heightMultiplier,
      width: 90 * SizeConfig.widthMultiplier,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        //border: Border.all(color: Colors.grey)
      ),
      child: Stack(
        children: [
          Positioned(
            bottom: 0,
            child: Container(
              height: 10 * SizeConfig.heightMultiplier,
              width: 78 * SizeConfig.widthMultiplier,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.grey)),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: Theme.of(context)
                          .textTheme
                          .bodyText1
                          ?.copyWith(color: Colors.grey),
                    ),
                    SizedBox(
                      height: 1 * SizeConfig.heightMultiplier,
                    ),
                    Text(
                      description,
                      style: Theme.of(context)
                          .textTheme
                          .bodyText2
                          ?.copyWith(color: Colors.grey.shade400),
                    )
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            right: 0,
            top: 0,
            child: Container(
                height: 4 * SizeConfig.heightMultiplier,
                width: 6 * SizeConfig.widthMultiplier,
                decoration: const BoxDecoration(
                    shape: BoxShape.circle, color: primaryColor),
                child: Image.asset('assets/icons/cross_icon.png')),
          ),
        ],
      ),
    );
  }
}
