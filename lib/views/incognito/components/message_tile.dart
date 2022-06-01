import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tribe_space/constants/icons.dart';
import 'package:tribe_space/utils/size_config.dart';

class MessageTile extends StatelessWidget {
  const MessageTile({
    Key? key,
    required this.message,
    required this.likeOnTap,
    required this.likeCount,
    required this.flagCount,
    required this.flagOnTap,
    required this.time,
  }) : super(key: key);
  final String message;
  final VoidCallback likeOnTap;
  final VoidCallback flagOnTap;
  final String likeCount;
  final String flagCount;
  final String time;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset(user),
        SizedBox(width: 3 * SizeConfig.widthMultiplier),
        Container(
            // height: 7 * SizeConfig.heightMultiplier,
            width: 58 * SizeConfig.widthMultiplier,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                boxShadow: const [
                  BoxShadow(
                      color: Colors.black26,
                      blurRadius: 3,
                      offset: Offset(0, 7))
                ]),
            child: Padding(
              padding: EdgeInsets.only(
                left: 2 * SizeConfig.widthMultiplier,
                right: 2 * SizeConfig.widthMultiplier,
                top: 2 * SizeConfig.heightMultiplier,
                bottom: 0.5 * SizeConfig.widthMultiplier,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(message,
                      style: Theme.of(context)
                          .textTheme
                          .subtitle2!
                          .copyWith(color: Colors.black)),
                  // const SizedBox(height: 5),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Text(time,
                        style: Theme.of(context)
                            .textTheme
                            .caption!
                            .copyWith(color: Colors.grey)),
                  )
                ],
              ),
            )),
        SizedBox(width: 5 * SizeConfig.widthMultiplier),
        Column(
          children: [
            GestureDetector(
              onTap: likeOnTap,
              child: Image.asset(likeIcon),
            ),
            Text(likeCount, style: const TextStyle(color: Colors.grey)),
          ],
        ),
        SizedBox(width: 5 * SizeConfig.widthMultiplier),
        Column(
          children: [
            GestureDetector(
              onTap: flagOnTap,
              child: SvgPicture.asset(flag),
            ),
            Text(flagCount, style: const TextStyle(color: Colors.grey)),
          ],
        ),
      ],
    );
  }
}
