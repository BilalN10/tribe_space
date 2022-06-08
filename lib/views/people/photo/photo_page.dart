import 'package:flutter/material.dart';
import 'package:tribe_space/constants/colors.dart';
import 'package:tribe_space/constants/icons.dart';
import 'package:tribe_space/model/people_model.dart';
import 'package:tribe_space/model/photos_model.dart';
import 'package:tribe_space/utils/size_config.dart';

class PhotoPage extends StatefulWidget {
  PhotoPage({Key? key}) : super(key: key);

  @override
  State<PhotoPage> createState() => _PhotoPageState();
}

class _PhotoPageState extends State<PhotoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: 3 * SizeConfig.widthMultiplier),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        'Edit',
                        style: TextStyle(color: Color(0xff011F5B)),
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        'sort',
                        style: TextStyle(color: Color(0xff011F5B)),
                      ),
                    )
                  ],
                ),
              ),
              Expanded(
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 1.7 / 2,
                      crossAxisSpacing: 6,
                      mainAxisSpacing: 20),
                  itemCount: photoList.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      margin: EdgeInsets.symmetric(
                          horizontal: 1.5 * SizeConfig.widthMultiplier),
                      decoration: BoxDecoration(
                          // image: DecorationImage(
                          //   image: AssetImage(
                          //     'assets/images/female_pic.png',
                          //   ),
                          //),

                          boxShadow: const [
                            BoxShadow(
                                color: Colors.black26,
                                blurRadius: 3,
                                offset: Offset(0, 4))
                          ],
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: index == 0
                            ? Icon(
                                Icons.add,
                                size: 20 * SizeConfig.imageSizeMultiplier,
                                color: greyColor,
                              )
                            : Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const Align(
                                      alignment: Alignment.topRight,
                                      child: Icon(Icons.more_vert_outlined)),
                                  Align(
                                    alignment: Alignment.bottomRight,
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Column(
                                          children: [
                                            Image.asset(comment),
                                            Text(
                                                photoList[index]
                                                    .comment!
                                                    .toString(),
                                                style: const TextStyle(
                                                    color: greyColor))
                                          ],
                                        ),
                                        SizedBox(
                                          width: 5 * SizeConfig.widthMultiplier,
                                        ),
                                        Column(
                                          children: [
                                            GestureDetector(
                                                onTap: () {
                                                  setState(() {
                                                    photoList[index].isLike =
                                                        !photoList[index]
                                                            .isLike!;

                                                    photoList[index].isLike!
                                                        ? photoList[index]
                                                                .likes! +
                                                            1
                                                        : photoList[index]
                                                                .likes! -
                                                            1;
                                                  });
                                                },
                                                child: Image.asset(
                                                  likeIcon,
                                                  color:
                                                      photoList[index].isLike!
                                                          ? primaryColor
                                                          : Colors.black,
                                                )),
                                            Text(
                                              photoList[index]
                                                  .likes!
                                                  .toString(),
                                              style: const TextStyle(
                                                  color: greyColor),
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget containertile(BuildContext context, VoidCallback voidCallback) {
    return GestureDetector(
      onTap: voidCallback,
      child: Container(
        height: 6 * SizeConfig.heightMultiplier,
        width: 60 * SizeConfig.widthMultiplier,
        decoration: BoxDecoration(boxShadow: const [
          BoxShadow(color: Colors.black26, blurRadius: 3, offset: Offset(0, 4))
        ], color: Colors.white, borderRadius: BorderRadius.circular(10)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: 2 * SizeConfig.widthMultiplier),
              child: const TextField(
                //maxLength: 200,
                decoration: InputDecoration(
                  suffixIcon: Icon(
                    Icons.search,
                    color: Colors.black,
                  ),
                  hintText: 'Search by name or keyword..',
                  // labelText: 'Your Name',
                  border: InputBorder.none,

                  // Display the number of entered characters
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
