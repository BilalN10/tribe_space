import 'package:flutter/material.dart';
import 'package:tribe_space/constants/icons.dart';
import 'package:tribe_space/utils/size_config.dart';

class Footer extends StatelessWidget {
  const Footer({
    Key? key,
    required this.attachOnTap,
    required this.micOnTap,
    required this.messageController,
    required this.sendOnTap,
  }) : super(key: key);
  final VoidCallback attachOnTap;
  final VoidCallback micOnTap;
  final TextEditingController messageController;
  final VoidCallback sendOnTap;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: attachOnTap,
          child: Image.asset(
            'assets/icons/attach.png',
            height: 3 * SizeConfig.heightMultiplier,
          ),
        ),
        SizedBox(width: 3 * SizeConfig.widthMultiplier),
        Container(
          height: 6 * SizeConfig.heightMultiplier,
          width: 70 * SizeConfig.widthMultiplier,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: const [
              BoxShadow(
                  color: Colors.black26, blurRadius: 2, offset: Offset(2, 3)),
            ],
          ),
          child: Row(
            children: [
              Expanded(
                  child: TextField(
                controller: messageController,
                decoration: const InputDecoration(
                    border: InputBorder.none,
                    errorBorder: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    disabledBorder: InputBorder.none),
              )),
              GestureDetector(
                  onTap: sendOnTap, child: Image.asset(messageIcon)),
              const SizedBox(width: 10),
            ],
          ),
        ),
        SizedBox(width: 2 * SizeConfig.widthMultiplier),
        GestureDetector(
          onTap: micOnTap,
          child: const Icon(
            Icons.mic,
            color: Colors.black,
          ),
        )
      ],
    );
  }
}
