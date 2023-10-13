import 'package:flutter/material.dart';
import 'package:ms_test_3/const.dart';
import 'package:ms_test_3/view%20/main_screen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(360, 800),
        builder: (context, child) {
          return MaterialApp(
            theme: ThemeData(scaffoldBackgroundColor: scaffoldBackgroundColor),
            home: const MainScreen(),
          );
        });
  }
}
