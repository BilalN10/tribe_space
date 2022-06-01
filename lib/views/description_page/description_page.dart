import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tribe_space/constants/images.dart';
import 'package:tribe_space/views/permission/permission.dart';

import '../../utils/size_config.dart';

class DescriptionPage extends StatefulWidget {
  const DescriptionPage({Key? key}) : super(key: key);

  @override
  State<DescriptionPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<DescriptionPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: 18 * SizeConfig.widthMultiplier),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Container(
              //   height: 10*SizeConfig.heightMultiplier,
              //   width: 30*SizeConfig.widthMultiplier,
              //   decoration: ,
              // ),
              Image.asset(
                group,
                height: 50 * SizeConfig.imageSizeMultiplier,
              ),
              SizedBox(
                height: 2 * SizeConfig.heightMultiplier,
              ),
              Text(
                'To protect the community, we require LinkedIn verification. We never sell, share, or barter your personal and behavioral data.',
                style: Theme.of(context).textTheme.bodyText1?.copyWith(
                    color: const Color(0xff000000),
                    fontWeight: FontWeight.normal),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: GestureDetector(
                  onTap: () {
                    Get.to(() => const PermissionPage());
                  },
                  child: const Text(
                    'Learn more',
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w700,
                        color: Color(0xff17689F)),
                  ),
                ),
              ),

              Image.asset(
                linkdin,
                height: 50 * SizeConfig.imageSizeMultiplier,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
