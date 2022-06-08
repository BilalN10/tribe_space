import 'package:flutter/material.dart';
import 'package:tribe_space/constants/colors.dart';
import 'package:tribe_space/model/topics_model.dart';
import 'package:tribe_space/utils/size_config.dart';

class TopicsPage extends StatelessWidget {
  const TopicsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: 3 * SizeConfig.widthMultiplier),
          child: Column(
            children: [
              SizedBox(
                height: 2 * SizeConfig.heightMultiplier,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  textFieldTile(context),
                  Image.asset('assets/icons/add_icon.png')
                ],
              ),
              SizedBox(
                height: 2 * SizeConfig.heightMultiplier,
              ),
              Expanded(
                child: ListView.builder(
                    itemCount: topicsList.length,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: const EdgeInsets.symmetric(vertical: 5),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 0),
                        height: 14 * SizeConfig.heightMultiplier,
                        width: 90 * SizeConfig.widthMultiplier,
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
                            horizontal: 3 * SizeConfig.widthMultiplier,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            //mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(
                                height: 3 * SizeConfig.heightMultiplier,
                              ),
                              Row(
                                children: [
                                  Image.asset('assets/icons/chat_icon.png'),
                                  SizedBox(
                                    width: 5 * SizeConfig.widthMultiplier,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        width: 50 * SizeConfig.widthMultiplier,
                                        child: Text(
                                          topicsList[index].title!,
                                          style: Theme.of(context)
                                              .textTheme
                                              .subtitle1
                                              ?.copyWith(
                                                  fontWeight: FontWeight.w600),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Container(
                                          width:
                                              50 * SizeConfig.widthMultiplier,
                                          child: Text(
                                              topicsList[index].subtitle!)),
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 2 * SizeConfig.heightMultiplier,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    topicsList[index].name!,
                                    style: Theme.of(context).textTheme.caption,
                                  ),
                                  Text(
                                    topicsList[index].posts!,
                                    style: Theme.of(context).textTheme.caption,
                                  ),
                                  Text(
                                    topicsList[index].date!,
                                    style: Theme.of(context).textTheme.caption,
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      );
                    }),
              )
            ],
          ),
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

  Widget textFieldTile(
    BuildContext context,
  ) {
    return Container(
      height: 6 * SizeConfig.heightMultiplier,
      width: 70 * SizeConfig.widthMultiplier,
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
            child: TextField(
              //maxLength: 200,
              decoration: InputDecoration(
                suffixIcon: Image.asset(
                  'assets/icons/search.png',
                  color: greyColor,
                ),
                hintText: 'Search by name or keyword..',
                hintStyle: const TextStyle(color: greyColor),
                // labelText: 'Your Name',
                border: InputBorder.none,

                // Display the number of entered characters
              ),
            ),
          ),
        ],
      ),
    );
  }
}
