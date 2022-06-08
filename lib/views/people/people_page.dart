import 'package:flutter/material.dart';
import 'package:tribe_space/constants/colors.dart';
import 'package:tribe_space/constants/icons.dart';
import 'package:tribe_space/model/people_model.dart';
import 'package:tribe_space/utils/size_config.dart';

class PeoplePage extends StatelessWidget {
  const PeoplePage({Key? key}) : super(key: key);

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
                height: 1 * SizeConfig.heightMultiplier,
              ),
              const Text(
                'Filter using industries and interests. Members will not be notified when you view their profile.',
                style: TextStyle(color: greyColor),
              ),
              SizedBox(
                height: 3 * SizeConfig.heightMultiplier,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  textFieldTile(
                    context,
                  ),
                  Image.asset('assets/icons/filter.png'),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                          onTap: () {},
                          child: Image.asset('assets/icons/up_vector.png')),
                      SizedBox(
                        height: 0.5 * SizeConfig.heightMultiplier,
                      ),
                      GestureDetector(
                          onTap: () {},
                          child: Image.asset('assets/icons/down_vector.png')),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 3 * SizeConfig.heightMultiplier,
              ),
              Expanded(
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 1.7 / 2,
                      crossAxisSpacing: 6,
                      mainAxisSpacing: 20),
                  itemCount: peopleList.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      margin: EdgeInsets.symmetric(
                          horizontal: 1.5 * SizeConfig.widthMultiplier),
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
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            const Align(
                                alignment: Alignment.topRight,
                                child: Icon(Icons.more_vert_outlined)),
                            CircleAvatar(
                              radius: 35,
                              backgroundImage:
                                  AssetImage(peopleList[index].imagePath!),
                            ),
                            SizedBox(height: 5),
                            Text(
                              peopleList[index].name!,
                              style: Theme.of(context)
                                  .textTheme
                                  .subtitle1
                                  ?.copyWith(fontWeight: FontWeight.bold),
                            ),
                            Text(
                              peopleList[index].designation!,
                              style: Theme.of(context)
                                  .textTheme
                                  .caption
                                  ?.copyWith(),
                            ),
                            const SizedBox(height: 6),
                            Image.asset(messageIcon),
                            const SizedBox(height: 5),
                            Align(
                              alignment: Alignment.bottomRight,
                              child: peopleList[index].status!
                                  ? Text('Available',
                                      style: Theme.of(context)
                                          .textTheme
                                          .caption!
                                          .copyWith(color: Color(0xff4FCF4D)))
                                  : Text('Busy',
                                      style: Theme.of(context)
                                          .textTheme
                                          .caption!
                                          .copyWith(color: Color(0xffF26666))),
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

  Widget textFieldTile(
    BuildContext context,
  ) {
    return Container(
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
    );
  }
}
