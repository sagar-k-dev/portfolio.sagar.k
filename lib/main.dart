import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:portfolio/res/res.dart';
import 'utils/navigators/navigators.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) => ScreenUtilInit(
        minTextAdapt: true,
        useInheritedMediaQuery: true,
        builder: (context, child) => GetMaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            primaryColor: ColorsValue.primaryColor,
          ),
          getPages: AppPages.pages,
          initialRoute: AppPages.initial,
        ),
      );
}
