import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:portfolio/res/res.dart';
import 'package:portfolio/utils/utils.dart';
import 'package:portfolio/views/home/widgets/widgets.dart';
import 'package:portfolio/views/views.dart';
import 'package:portfolio/widgets/responsive_builder.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  bool _isHovered = false;
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  final ScrollController _scrollController = ScrollController();

  // Keys for each section
  final GlobalKey _homeKey = GlobalKey();
  final GlobalKey _skillsKey = GlobalKey();
  final GlobalKey _projectsKey = GlobalKey();
  final GlobalKey _contactKey = GlobalKey();

  void _scrollToSection(GlobalKey key) {
    final context = key.currentContext;
    if (context != null) {
      Scrollable.ensureVisible(
        context,
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeInOut,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final device = DeviceType(context).deviceType;

    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: Colors.black.withValues(alpha: 0.95),
      endDrawer: Drawer(
        surfaceTintColor: Colors.white,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(Dimens.zero),
            bottomRight: Radius.circular(Dimens.zero),
          ),
        ),
        backgroundColor: Colors.black.withValues(alpha: 0.95),
        child: SafeArea(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: Dimens.zero),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    IconButton(
                      onPressed: Get.back,
                      icon: const Icon(
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
                hoverColor: ColorsValue.primaryColor.withValues(alpha: 0.3),
                title: Text('HOME', style: Styles.white12),
                onTap: () {
                  Navigator.pop(context);
                  _scrollToSection(_homeKey);
                },
              ),
              ListTile(
                hoverColor: ColorsValue.primaryColor.withValues(alpha: 0.3),
                title: Text('SKILLS', style: Styles.white12),
                onTap: () {
                  Navigator.pop(context);
                  _scrollToSection(_skillsKey);
                },
              ),
              ListTile(
                hoverColor: ColorsValue.primaryColor.withValues(alpha: 0.3),
                title: Text('PROJECTS', style: Styles.white12),
                onTap: () {
                  Navigator.pop(context);
                  _scrollToSection(_projectsKey);
                },
              ),
              ListTile(
                hoverColor: ColorsValue.primaryColor.withValues(alpha: 0.3),
                title: Text('CONTACT', style: Styles.white12),
                onTap: () {
                  Navigator.pop(context);
                  _scrollToSection(_contactKey);
                },
              ),
            ],
          ),
        ),
      ),
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        surfaceTintColor: Colors.transparent,
        automaticallyImplyLeading: false,
        titleSpacing: 0,
        actions: const [SizedBox.shrink()],
        toolbarHeight: device == DeviceScreenType.mobile ? null : 80,
        title: Container(
          margin: EdgeInsets.symmetric(
            horizontal: kIsWeb && device == DeviceScreenType.mobile
                ? Dimens.thirty
                : device == DeviceScreenType.mobile
                    ? Dimens.twenty
                    : Dimens.hundred,
          ),
          child: Row(
            children: [
              InkWell(
                splashFactory: NoSplash.splashFactory,
                highlightColor: Colors.transparent,
                onTap: () => _scrollToSection(_homeKey),
                child: Row(
                  children: [
                    Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: 'S',
                            style: Styles.white22.copyWith(
                                color: ColorsValue.primaryColor,
                                fontWeight: FontWeight.bold),
                          ),
                          TextSpan(
                            text: 'agar ',
                            style: Styles.white20,
                          ),
                          TextSpan(
                            text: 'K',
                            style: Styles.white22.copyWith(
                                color: ColorsValue.primaryColor,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    Dimens.boxWidth10,
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: Dimens.ten, vertical: Dimens.three),
                      decoration: BoxDecoration(
                        color: ColorsValue.primaryColor.withValues(alpha: 0.2),
                        borderRadius: BorderRadius.circular(Dimens.fifty),
                        border: Border.all(color: ColorsValue.primaryColor),
                      ),
                      child: Text(
                        'Frontend Developer',
                        style: Styles.white10.copyWith(
                          color: ColorsValue.primaryColor,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              if (device == DeviceScreenType.web) ...[
                const Spacer(),
                CustomTextButton(
                  title: 'HOME',
                  onPressed: () => _scrollToSection(_homeKey),
                ),
                CustomTextButton(
                  title: 'SKILLS',
                  onPressed: () => _scrollToSection(_skillsKey),
                ),
                CustomTextButton(
                  title: 'PROJECTS',
                  onPressed: () => _scrollToSection(_projectsKey),
                ),
                CustomTextButton(
                  title: 'CONTACT',
                  onPressed: () => _scrollToSection(_contactKey),
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
        padding: EdgeInsets.symmetric(
          horizontal: kIsWeb && device == DeviceScreenType.mobile
              ? Dimens.thirty
              : device == DeviceScreenType.mobile
                  ? Dimens.twenty
                  : Dimens.hundred,
        ),
        child: Stack(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: Opacity(
                opacity: 0.1,
                child: Lottie.asset(AssetConstants.backgroundAnimation,
                    fit: BoxFit.contain),
              ),
            ),
            SingleChildScrollView(
              controller: _scrollController,
              child: Column(
                children: [
                  DashboardPage(
                    key: _homeKey,
                    onWorkButtonPressed: () => _scrollToSection(_projectsKey),
                  ),
                  SkillPage(key: _skillsKey),
                  ProjectsPage(
                    key: _projectsKey,
                    onContactMePressed: () => _scrollToSection(_contactKey),
                  ),
                  ContactsPage(key: _contactKey),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
