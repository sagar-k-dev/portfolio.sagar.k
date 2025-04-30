import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:portfolio/res/res.dart';
import 'utils/navigators/navigators.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) => GetMaterialApp(
        // builder: (context, child) => MediaQuery(
        //   data: MediaQuery.of(context)
        //       .copyWith(textScaler: const TextScaler.linear(1.0)),
        //   child: child!,
        // ),
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primaryColor: ColorsValue.primaryColor,
        ),
        getPages: AppPages.pages,
        initialRoute: AppPages.initial,
      );
}
