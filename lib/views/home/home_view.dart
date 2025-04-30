import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:portfolio/res/res.dart';
import 'package:portfolio/utils/utils.dart';
import 'package:portfolio/widgets/responsive_builder.dart';

import 'widgets/custom_text_button.dart';

class ScaleSize {
  static double textScaleFactor(BuildContext context,
      {double maxTextScaleFactor = 2.5}) {
    final width = MediaQuery.of(context).size.width;
    final device = DeviceType(context).deviceType;

    switch (device) {
      case DeviceScreenType.mobile:
        double val = (width / 700) * maxTextScaleFactor;
        return max(1.1, min(val, maxTextScaleFactor));
      case DeviceScreenType.tablet:
        double val = (width / 1000) * maxTextScaleFactor;
        return max(0.95, min(val, 1.4));
      case DeviceScreenType.web:
        double val = (width / 1200) * maxTextScaleFactor;
        return max(0.9, min(val, 1.7));
    }
  }
}

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  static const String route = '/home';

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  bool _isHovered = false;
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  final PageController _pageController = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    final device = DeviceType(context).deviceType;
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: Colors.black,
      endDrawer: Drawer(
        surfaceTintColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(Dimens.zero),
            bottomRight: Radius.circular(Dimens.zero),
          ),
        ),
        backgroundColor: Colors.black,
        child: SafeArea(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              Padding(
                padding: EdgeInsets.only(top: Dimens.zero),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    IconButton(
                      onPressed: Get.back,
                      icon: Icon(
                        Icons.arrow_forward_ios_rounded,
                        color: ColorsValue.primaryColor,
                        size: Dimens.twenty,
                      ),
                    ),
                  ],
                ),
              ),
              Dimens.boxHeight10,
              ListTile(
                hoverColor: ColorsValue.primaryColor.withOpacity(0.3),
                title: Text('SKILLS',
                    style: Styles.white12,
                    textScaler:
                        TextScaler.linear(ScaleSize.textScaleFactor(context))),
                onTap: () {
                  Navigator.pop(context);
                  _pageController.animateToPage(
                    1,
                    duration: const Duration(milliseconds: 500),
                    curve: Curves.easeInOut,
                  );
                },
              ),
              ListTile(
                hoverColor: ColorsValue.primaryColor.withOpacity(0.3),
                title: Text('PROJECTS',
                    style: Styles.white12,
                    textScaler:
                        TextScaler.linear(ScaleSize.textScaleFactor(context))),
                onTap: () {
                  Navigator.pop(context);
                  _pageController.animateToPage(
                    2,
                    duration: const Duration(milliseconds: 500),
                    curve: Curves.easeInOut,
                  );
                },
              ),
              ListTile(
                hoverColor: ColorsValue.primaryColor.withOpacity(0.3),
                title: Text('CONTACT',
                    style: Styles.white12,
                    textScaler:
                        TextScaler.linear(ScaleSize.textScaleFactor(context))),
                onTap: () {
                  Navigator.pop(context);
                  _pageController.animateToPage(
                    3,
                    duration: const Duration(milliseconds: 500),
                    curve: Curves.easeInOut,
                  );
                },
              ),
            ],
          ),
        ),
      ),
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        automaticallyImplyLeading: false,
        titleSpacing: 0,
        actions: const [SizedBox.shrink()],
        toolbarHeight: device == DeviceScreenType.mobile ? null : 100,
        title: Container(
          margin: EdgeInsets.symmetric(
              horizontal: device == DeviceScreenType.mobile
                  ? Dimens.thirty
                  : Dimens.hundred),
          child: Row(
            children: [
              Text.rich(
                textScaler:
                    TextScaler.linear(ScaleSize.textScaleFactor(context)),
                TextSpan(
                  children: [
                    TextSpan(
                      text: 'S',
                      style: Styles.white22
                          .copyWith(color: ColorsValue.primaryColor),
                    ),
                    TextSpan(
                      text: 'agar ',
                      style: Styles.white22,
                    ),
                    TextSpan(
                      text: 'K',
                      style: Styles.white22
                          .copyWith(color: ColorsValue.primaryColor),
                    ),
                  ],
                ),
              ),
              Dimens.boxWidth10,
              Container(
                padding: EdgeInsets.symmetric(
                    horizontal: Dimens.ten, vertical: Dimens.three),
                decoration: BoxDecoration(
                  color: ColorsValue.primaryColor.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(Dimens.fifty),
                  border: Border.all(color: ColorsValue.primaryColor),
                ),
                child: Text(
                  'Frontend Developer',
                  style: Styles.white10.copyWith(
                    color: ColorsValue.primaryColor,
                    fontWeight: FontWeight.w500,
                  ),
                  textScaler:
                      TextScaler.linear(ScaleSize.textScaleFactor(context)),
                ),
              ),
              if (device == DeviceScreenType.web) ...[
                const Spacer(),
                CustomeTextButton(
                  title: 'SKILLS',
                  onPressed: () {
                    _pageController.animateToPage(
                      1,
                      duration: const Duration(milliseconds: 500),
                      curve: Curves.easeInOut,
                    );
                  },
                ),
                CustomeTextButton(
                  title: 'PROJECTS',
                  onPressed: () {
                    _pageController.animateToPage(
                      2,
                      duration: const Duration(milliseconds: 500),
                      curve: Curves.easeInOut,
                    );
                  },
                ),
                CustomeTextButton(
                  title: 'CONTACT',
                  onPressed: () {
                    _pageController.animateToPage(
                      3,
                      duration: const Duration(milliseconds: 500),
                      curve: Curves.easeInOut,
                    );
                  },
                ),
              ],
              if (device != DeviceScreenType.web) ...[
                const Spacer(),
                IconButton(
                  onHover: (value) {
                    setState(() {
                      _isHovered = value;
                    });
                  },
                  onPressed: () {
                    _scaffoldKey.currentState?.openEndDrawer();
                  },
                  icon: Icon(Icons.menu,
                      color:
                          _isHovered ? ColorsValue.primaryColor : Colors.white),
                ),
              ]
            ],
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(
          device == DeviceScreenType.mobile ? Dimens.thirty : Dimens.hundred,
          Dimens.zero,
          device == DeviceScreenType.mobile ? Dimens.thirty : Dimens.hundred,
          Dimens.zero,
        ),
        child: Stack(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: Opacity(
                opacity: 0.1,
                child: Lottie.asset('assets/background_animation.json',
                    fit: BoxFit.contain),
              ),
            ),
            PageView(
              controller: _pageController,
              scrollDirection: Axis.vertical,
              pageSnapping: false,
              children: [
                _buildHomePage(device),
                _buildSkillsPage(),
                _buildProjectsPage(),
                _buildContactPage(),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildHomePage(DeviceScreenType device) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (device != DeviceScreenType.web) ...[
            Expanded(
              flex: 3,
              child: Center(
                child: Lottie.asset('assets/hello_animation.json'),
              ),
            ),
          ],
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                flex: 2,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text.rich(
                      textScaler:
                          TextScaler.linear(ScaleSize.textScaleFactor(context)),
                      TextSpan(
                        children: [
                          TextSpan(text: 'Hey, I\'m ', style: Styles.white12),
                          TextSpan(
                            text: 'S',
                            style: Styles.white30.copyWith(
                              color: ColorsValue.primaryColor,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          TextSpan(
                            text: 'agar',
                            style: Styles.white30.copyWith(
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Dimens.boxHeight10,
                    Text(
                      'I bring 3+ years of experience developing cross-platform applications with Flutter, Dart and Firebase. Proven track record in building efficient, robust applications with strong focus on UI/UX design. Utilize AI-powered tools to optimize development workflows and enhance productivity.',
                      style: Styles.white10,
                      textScaler:
                          TextScaler.linear(ScaleSize.textScaleFactor(context)),
                    ),
                    if (device == DeviceScreenType.web)
                      Padding(
                        padding: EdgeInsets.only(top: Dimens.fifty),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(
                              child: ElevatedButton(
                                style: ButtonStyle(
                                  padding: WidgetStateProperty.all(
                                      EdgeInsets.symmetric(
                                          vertical: Dimens.fifteen)),
                                  backgroundColor: WidgetStateProperty.all(
                                      ColorsValue.primaryColor
                                          .withOpacity(0.8)),
                                ),
                                onPressed: () {
                                  _pageController.animateToPage(
                                    2,
                                    duration: const Duration(milliseconds: 500),
                                    curve: Curves.easeInOut,
                                  );
                                },
                                child: Text(
                                  'My Work',
                                  style: Styles.white10.copyWith(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w600),
                                  textScaler: TextScaler.linear(
                                      ScaleSize.textScaleFactor(context)),
                                ),
                              ),
                            ),
                            Dimens.boxWidth20,
                            Expanded(
                              child: ElevatedButton(
                                style: ButtonStyle(
                                  padding: WidgetStateProperty.all(
                                      EdgeInsets.symmetric(
                                          vertical: Dimens.fifteen)),
                                  backgroundColor: WidgetStateProperty.all(
                                      Colors.white.withOpacity(0.8)),
                                  splashFactory: NoSplash.splashFactory,
                                ),
                                onPressed: () {},
                                child: Text(
                                  'My Resume',
                                  style: Styles.white10.copyWith(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w600),
                                  textScaler: TextScaler.linear(
                                      ScaleSize.textScaleFactor(context)),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                  ],
                ),
              ),
              if (device == DeviceScreenType.web)
                Expanded(
                  flex: 3,
                  child: Padding(
                    padding: EdgeInsets.only(bottom: Dimens.fifty),
                    child: Lottie.asset('assets/hello_animation.json'),
                  ),
                ),
            ],
          ),
          if (device != DeviceScreenType.web)
            Expanded(
              flex: 2,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      style: ButtonStyle(
                        padding: WidgetStateProperty.all(
                            EdgeInsets.symmetric(vertical: Dimens.fifteen)),
                        backgroundColor:
                            WidgetStateProperty.all(ColorsValue.primaryColor),
                      ),
                      onPressed: () {
                        _pageController.animateToPage(
                          2,
                          duration: const Duration(milliseconds: 500),
                          curve: Curves.easeInOut,
                        );
                      },
                      child: Text(
                        'My Work',
                        style: Styles.white10.copyWith(
                            color: Colors.black, fontWeight: FontWeight.w600),
                        textScaler: TextScaler.linear(
                            ScaleSize.textScaleFactor(context)),
                      ),
                    ),
                  ),
                  Dimens.boxHeight10,
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      style: ButtonStyle(
                        padding: WidgetStateProperty.all(
                            EdgeInsets.symmetric(vertical: Dimens.fifteen)),
                        splashFactory: NoSplash.splashFactory,
                      ),
                      onPressed: () {},
                      child: Text(
                        'My Resume',
                        style: Styles.white10.copyWith(
                            color: Colors.black, fontWeight: FontWeight.w600),
                        textScaler: TextScaler.linear(
                            ScaleSize.textScaleFactor(context)),
                      ),
                    ),
                  ),
                ],
              ),
            ),
        ],
      ),
    );
  }

  Widget _buildSkillsPage() {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'SKILLS',
            style: Styles.white30.copyWith(
              color: ColorsValue.primaryColor,
              fontWeight: FontWeight.bold,
            ),
          ),
          Dimens.boxHeight20,
          Text(
            'Flutter, Dart, Firebase, React, JavaScript, TypeScript, HTML, CSS',
            style: Styles.white16,
          ),
          Dimens.boxHeight10,
          Text(
            'Mobile App Development • Web Development • UI/UX Design',
            style: Styles.white12,
          ),
        ],
      ),
    );
  }

  Widget _buildProjectsPage() {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'PROJECTS',
            style: Styles.white30.copyWith(
              color: ColorsValue.primaryColor,
              fontWeight: FontWeight.bold,
            ),
          ),
          Dimens.boxHeight20,
          Text(
            'Portfolio highlights coming soon',
            style: Styles.white16,
          ),
        ],
      ),
    );
  }

  Widget _buildContactPage() {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'CONTACT',
            style: Styles.white30.copyWith(
              color: ColorsValue.primaryColor,
              fontWeight: FontWeight.bold,
            ),
          ),
          Dimens.boxHeight20,
          Text(
            'Get in touch with me',
            style: Styles.white16,
          ),
          Dimens.boxHeight10,
          Text(
            'email@example.com',
            style: Styles.white12.copyWith(
              color: ColorsValue.primaryColor,
            ),
          ),
        ],
      ),
    );
  }
}
