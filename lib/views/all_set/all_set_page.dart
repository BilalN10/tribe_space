import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tribe_space/utils/size_config.dart';
import 'package:tribe_space/views/selection/selection_page.dart';

import '../../constants/colors.dart';

class AllsetPage extends StatefulWidget {
  const AllsetPage({Key? key}) : super(key: key);

  @override
  State<AllsetPage> createState() => _AllsetPageState();
}

class _AllsetPageState extends State<AllsetPage> {
  @override
  void initState() {
    Timer(
      const Duration(seconds: 3),
      () {
        Get.offAll(() => const Selectionpage());
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: 20 * SizeConfig.widthMultiplier),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/images/meditation.png'),
              Text(
                'you’re all set!',
                style: Theme.of(context).textTheme.headline4?.copyWith(
                    fontWeight: FontWeight.bold, color: Colors.black),
              ),
              SizedBox(
                height: 2 * SizeConfig.heightMultiplier,
              ),
              Text(
                'We’ve designed tribespace to be fun, clutter free, and privacy-respecting. Take a minute to learn how it works.',
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
}
