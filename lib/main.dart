import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio/res/res.dart';
import 'package:portfolio/views/views.dart';
import 'package:portfolio/widgets/widgets.dart';
import 'package:url_strategy/url_strategy.dart';
import 'package:google_fonts/google_fonts.dart';
import 'utils/navigators/navigators.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await GoogleFonts.pendingFonts([
    GoogleFonts.gelasio(),
  ]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final scale = ScaleSize.textScaleFactor(context);
    return MediaQuery(
      data:
          MediaQuery.of(context).copyWith(textScaler: TextScaler.linear(scale)),
      child: GetMaterialApp(
        home: const HomeView(),
        title: 'Sagar K | Application Developer',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primaryColor: ColorsValue.primaryColor,
          fontFamily: GoogleFonts.gelasio().fontFamily,
        ),
      ),
    );
  }
}
