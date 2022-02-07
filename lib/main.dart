import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import 'utils/utils.dart';
import 'views/views.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return GetMaterialApp(
          title: 'Tens Drive',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            primarySwatch: AppCustomColors.primaryColor,
            fontFamily: 'Dongle',
          ),
          home: const SplashScreen(),
        );
      },
    );
  }
}
