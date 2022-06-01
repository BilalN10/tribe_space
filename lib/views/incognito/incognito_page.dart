import 'package:flutter/material.dart';
import 'package:tribe_space/utils/size_config.dart';
import 'package:tribe_space/views/incognito/components/message_tile.dart';
import 'package:tribe_space/views/widget/footer.dart';

// ignore: must_be_immutable
class IncognitoPage extends StatelessWidget {
  IncognitoPage({Key? key}) : super(key: key);
  final TextEditingController messageController = TextEditingController();
  List<String> messages = [
    'Feeling nervous today!',
    'Same here!',
    '+1 to that!',
  ];
  List<String> likes = [
    '13',
    '3',
    '2',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(
            'If your message is flagged thrice, you will no longer be able to send messages for 24 hours.',
            style: Theme.of(context)
                .textTheme
                .caption!
                .copyWith(color: Colors.grey, fontWeight: FontWeight.bold),
          ),
          Padding(
            padding: EdgeInsets.only(right: 5 * SizeConfig.widthMultiplier),
            child: Align(
              alignment: Alignment.topRight,
              child: GestureDetector(
                onTap: () {},
                child: Text('learn more',
                    style: Theme.of(context).textTheme.subtitle2!.copyWith(
                        color: const Color(0xff011F5B),
                        fontWeight: FontWeight.bold)),
              ),
            ),
          ),
          SizedBox(height: 3 * SizeConfig.heightMultiplier),
          Expanded(
            child: ListView.builder(
              itemCount: messages.length,
              itemBuilder: (BuildContext context, int index) {
                return Column(
                  children: [
                    MessageTile(
                      likeOnTap: () {},
                      flagOnTap: () {},
                      message: messages[index],
                      likeCount: likes[index],
                      flagCount: '0',
                      time: '9:45 PM',
                    ),
                    SizedBox(height: 3 * SizeConfig.heightMultiplier),
                  ],
                );
              },
            ),
          ),
          Footer(
            attachOnTap: () {},
            messageController: messageController,
            micOnTap: () {},
            sendOnTap: () {},
          ),
        ],
      ),
    );
  }
}
