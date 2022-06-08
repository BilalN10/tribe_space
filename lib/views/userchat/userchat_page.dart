import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:get/get.dart';
import 'package:tribe_space/constants/icons.dart';
import 'package:tribe_space/utils/size_config.dart';
import 'package:tribe_space/views/interest/interest_page.dart';
import 'package:tribe_space/views/widget/footer.dart';

class UserChatPage extends StatelessWidget {
  UserChatPage({Key? key}) : super(key: key);
  final TextEditingController messageController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: 2 * SizeConfig.widthMultiplier),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            SizedBox(height: SizeConfig.heightMultiplier),
            Row(mainAxisAlignment: MainAxisAlignment.end, children: [
              GestureDetector(
                  onTap: () {}, child: Image.asset('assets/icons/pin.png')),
              SizedBox(width: 2 * SizeConfig.widthMultiplier),
              const Text(
                'frame',
                style: TextStyle(fontSize: 2),
              ),
              const SizedBox(width: 10),
            ]),
            ChatColumnData(
              onTap: () {},
              imgPath: 'assets/images/circle-profile-pic.png',
              message: 'I’ll upload the class notes in Files!',
              likes: '32',
              personName: 'Katie',
              time: '8:03 AM ',
            ),
            SizedBox(height: 2 * SizeConfig.heightMultiplier),
            ChatColumnData(
              onTap: () {},
              imgPath: 'assets/images/man_pic.png',
              message: 'I love the tribe mood\ntoday!',
              likes: '3',
              personName: 'Clark',
              time: '8:13 AM ',
            ),
            SizedBox(height: 2 * SizeConfig.heightMultiplier),
            Slidable(
              endActionPane: ActionPane(
                motion: const ScrollMotion(),
                children: [
                  SlidableAction(
                    // An action can be bigger than the others.
                    // flex: 2,
                    onPressed: (val) {},
                    backgroundColor: const Color(0xffF26666).withOpacity(0.8),
                    foregroundColor: Colors.white,
                    icon: Icons.close,

                    label: '11 vote',
                  ),
                  SlidableAction(
                    onPressed: (val) {},
                    backgroundColor: const Color(0xFF4FCF4D).withOpacity(0.8),
                    foregroundColor: Colors.white,
                    icon: Icons.done,
                    label: '16 vote',
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      const CircleAvatar(
                        radius: 30,
                        backgroundImage:
                            AssetImage('assets/images/female_pic.png'),
                      ),
                      SizedBox(width: 7 * SizeConfig.widthMultiplier),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            // color: Colors.red,
                            width: 66 * SizeConfig.widthMultiplier,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text('Jamie',
                                    style: Theme.of(context)
                                        .textTheme
                                        .subtitle1!
                                        .copyWith(color: Colors.black)),
                                const Spacer(),
                                // Container(
                                //     height: 4 * SizeConfig.heightMultiplier,
                                //     width: 20 * SizeConfig.widthMultiplier,
                                //     decoration: BoxDecoration(
                                //       color: const Color(0xff4FCF4D),
                                //       borderRadius: BorderRadius.circular(20),
                                //       boxShadow: const [
                                //         BoxShadow(
                                //             color: Colors.black12,
                                //             blurRadius: 5,
                                //             offset: Offset(0, 2))
                                //       ],
                                //     ),
                                //     child: Center(
                                //       child: Text('Yes',
                                //           style: Theme.of(context)
                                //               .textTheme
                                //               .subtitle1!
                                //               .copyWith(
                                //                   color: Colors.black,
                                //                   fontWeight: FontWeight.bold)),
                                //     )),
                                // SizedBox(width: 3 * SizeConfig.widthMultiplier),
                                // Container(
                                //     height: 4 * SizeConfig.heightMultiplier,
                                //     width: 20 * SizeConfig.widthMultiplier,
                                //     decoration: BoxDecoration(
                                //         color: const Color(0xffF26666)
                                //             .withOpacity(0.5),
                                //         borderRadius: BorderRadius.circular(20),
                                //         boxShadow: const [
                                //           BoxShadow(
                                //               color: Colors.black12,
                                //               blurRadius: 5,
                                //               offset: Offset(0, 2))
                                //         ]),
                                //     child: Center(
                                //       child: Text('No',
                                //           style: Theme.of(context)
                                //               .textTheme
                                //               .subtitle1!
                                //               .copyWith(
                                //                   color: Colors.black,
                                //                   fontWeight: FontWeight.bold)),
                                //     )),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 66 * SizeConfig.widthMultiplier,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text('Joining football\ntomorrow',
                                        style: Theme.of(context)
                                            .textTheme
                                            .caption!
                                            .copyWith(color: Colors.black)),
                                    const Spacer(),
                                    // const Text('16 votes',
                                    //     style: TextStyle(
                                    //         color: Colors.grey, fontSize: 12)),
                                    // SizedBox(
                                    //     width: 9 * SizeConfig.widthMultiplier),
                                    // const Text('11 votes',
                                    //     style: TextStyle(
                                    //         color: Colors.grey, fontSize: 12)),
                                    // const Spacer(),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    const Text('8:35 AM',
                                        style: TextStyle(
                                            color: Colors.grey, fontSize: 10)),
                                    GestureDetector(
                                      onTap: () {
                                        Get.to(() => const InterestPage());
                                      },
                                      child: Text('see respondents',
                                          style: Theme.of(context)
                                              .textTheme
                                              .caption!
                                              .copyWith(
                                                  color:
                                                      const Color(0xff011F5B),
                                                  fontWeight: FontWeight.bold)),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const Spacer(),
            Footer(
              attachOnTap: () {},
              messageController: messageController,
              micOnTap: () {},
              sendOnTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}

class ChatColumnData extends StatelessWidget {
  const ChatColumnData({
    required this.imgPath,
    required this.personName,
    required this.message,
    required this.time,
    required this.likes,
    required this.onTap,
    Key? key,
  }) : super(key: key);
  final String imgPath;
  final String personName;
  final String message;
  final VoidCallback onTap;
  final String time;
  final String likes;
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CircleAvatar(
          radius: 30,
          backgroundImage: AssetImage(imgPath),
        ),
        // const SizedBox(height: 10),
        SizedBox(width: 4 * SizeConfig.widthMultiplier),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(personName,
                style: const TextStyle(
                    color: Colors.black, fontWeight: FontWeight.bold)),

            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                        width: 62 * SizeConfig.widthMultiplier,
                        child: Text(message)),
                    Text(time,
                        style:
                            const TextStyle(color: Colors.grey, fontSize: 12)),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(likeIcon),
                    const SizedBox(height: 5),
                    GestureDetector(
                      onTap: onTap,
                      child: Text(likes,
                          style: Theme.of(context)
                              .textTheme
                              .caption!
                              .copyWith(color: Colors.grey)),
                    ),
                  ],
                ),
              ],
            ),
            // Text(time,
            //     style: const TextStyle(color: Colors.grey, fontSize: 12)),
            // SizedBox(height: 0 * SizeConfig.heightMultiplier),
          ],
        ),
      ],
    );
  }
}
