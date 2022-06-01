import 'package:flutter/material.dart';
import 'package:tribe_space/constants/icons.dart';
import 'package:tribe_space/utils/size_config.dart';

class HubPage extends StatelessWidget {
  const HubPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Align(
            alignment: Alignment.topRight,
            child: GestureDetector(
              onTap: () {},
              child: Text('Filter posts',
                  style: Theme.of(context).textTheme.subtitle1!.copyWith(
                      color: const Color(0xff011F5B),
                      fontWeight: FontWeight.bold)),
            ),
          ),
          Row(
            children: [
              Image.asset(
                'assets/images/man_pic.png',
                height: 4 * SizeConfig.heightMultiplier,
              ),
              SizedBox(width: 3 * SizeConfig.widthMultiplier),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Clark Kent',
                      style: Theme.of(context).textTheme.subtitle1!.copyWith(
                          color: Colors.black, fontWeight: FontWeight.bold)),
                  const SizedBox(height: 5),
                  Text('Anyone down to grab pizza?',
                      style: Theme.of(context)
                          .textTheme
                          .subtitle1!
                          .copyWith(color: Colors.black)),
                ],
              ),
            ],
          ),
          SizedBox(height: 1 * SizeConfig.heightMultiplier),
          ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset('assets/images/fod.png')),
          SizedBox(height: 1 * SizeConfig.heightMultiplier),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ColumnData(
                  onTap: () {},
                  imgPath: likeIcon,
                  text: '35',
                ),
                SizedBox(width: 5 * SizeConfig.widthMultiplier),
                ColumnData(
                  onTap: () {},
                  imgPath: comment,
                  text: '13',
                ),
                SizedBox(width: 5 * SizeConfig.widthMultiplier),
                GestureDetector(
                  onTap: () {},
                  child: Image.asset(messageIcon),
                ),
                const Spacer(),
                GestureDetector(
                  onTap: () {},
                  child: Image.asset(bookmark),
                ),
              ],
            ),
          ),
          SizedBox(height: 2 * SizeConfig.heightMultiplier),
          RowData(
            times: '8:14 AM',
            message: 'Omar Stevenson joined using tribe code',
            onTap: () {},
          ),
          SizedBox(height: 1 * SizeConfig.heightMultiplier),
          RowData(
            times: '8:25 AM',
            message: 'Pablo Masco uploaded a file',
            onTap: () {},
          ),
          SizedBox(height: 1 * SizeConfig.heightMultiplier),
          RowData(
            times: '8:26 AM',
            message: 'Malik Lymes uploaded a photo',
            onTap: () {},
          ),
          SizedBox(height: 1 * SizeConfig.heightMultiplier),
          RowData(
            times: '8:27 AM',
            message: 'Natasha Jr uploaded a survey',
            onTap: () {},
          ),
          // SizedBox(height: 1 * SizeConfig.heightMultiplier),
          GestureDetector(
            onTap: () {},
            child: Container(
              height: SizeConfig.heightMultiplier * 12,
              width: 16 * SizeConfig.widthMultiplier,
              decoration: const BoxDecoration(
                  color: Color(0xffD1375F), shape: BoxShape.circle),
              child: Center(
                child: Text('+',
                    style: Theme.of(context)
                        .textTheme
                        .headline2!
                        .copyWith(color: Colors.white)),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class RowData extends StatelessWidget {
  const RowData({
    Key? key,
    required this.times,
    required this.message,
    required this.onTap,
  }) : super(key: key);
  final String times;
  final String message;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(times, style: const TextStyle(color: Colors.grey, fontSize: 8)),
        SizedBox(width: 2 * SizeConfig.widthMultiplier),
        Container(
          // height: 4 * SizeConfig.heightMultiplier,
          width: 45 * SizeConfig.widthMultiplier,
          decoration: BoxDecoration(
            color: Colors.grey.shade200,
            borderRadius: BorderRadius.circular(40),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: Text(message,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                  style: const TextStyle(fontSize: 8)),
            ),
          ),
        ),
        SizedBox(width: 2 * SizeConfig.widthMultiplier),
        // const Spacer(),
        GestureDetector(
          onTap: onTap,
          child: Text('View',
              style: Theme.of(context).textTheme.caption!.copyWith(
                  color: const Color(0xff011F5B),
                  fontWeight: FontWeight.bold,
                  fontSize: 8)),
        ),
      ],
    );
  }
}

class ColumnData extends StatelessWidget {
  const ColumnData({
    required this.imgPath,
    required this.text,
    required this.onTap,
    Key? key,
  }) : super(key: key);
  final String imgPath;
  final String text;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: onTap,
          child: Image.asset(imgPath),
        ),
        const SizedBox(height: 5),
        Text(text, style: const TextStyle(color: Colors.grey)),
      ],
    );
  }
}
