import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:tribe_space/utils/size_config.dart';
import 'package:tribe_space/views/add_color/add_color_page.dart';
import 'package:tribe_space/views/people/photo/photo_page.dart';
import 'package:tribe_space/views/splash/splash_page.dart';
import 'package:tribe_space/views/tribe_code/tribe_code_page.dart';

import 'views/topics/topics_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
    ));
    return LayoutBuilder(
      builder: (context, constraints) {
        return OrientationBuilder(
          builder: (context, orientation) {
            SizeConfig().init(constraints, orientation);
            return GetMaterialApp(
                theme: ThemeData(fontFamily: 'OpenSans'),
                debugShowCheckedModeBanner: false,
                home: SplashPage()
                //AddColorPage()
                ); // RootPage());
          },
        );
      },
    );
  }
}
