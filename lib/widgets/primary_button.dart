import 'package:flutter/material.dart';
import 'package:tribe_space/constants/colors.dart';
import 'package:tribe_space/utils/size_config.dart';

// ignore: must_be_immutable
class PrimaryButton extends StatelessWidget {
  PrimaryButton({Key? key, this.voidCallback, this.txt}) : super(key: key);
  VoidCallback? voidCallback;
  String? txt;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: voidCallback,
      child: Container(
        alignment: Alignment.center,
        height: 6 * SizeConfig.heightMultiplier,
        width: 90 * SizeConfig.widthMultiplier,
        decoration: BoxDecoration(
            color: primaryColor, borderRadius: BorderRadius.circular(12)),
        child: Text(
          txt!,
          style: Theme.of(context).textTheme.bodyLarge?.copyWith(
              color: Colors.white, fontSize: 2 * SizeConfig.textMultiplier),
        ),
      ),
    );
  }
}
