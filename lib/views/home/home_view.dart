import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:portfolio/res/res.dart';
import 'package:portfolio/widgets/responsive_builder.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  static const String route = '/home';

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final ScrollController _scrollController = ScrollController();
  bool _isScrolled = false;

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_listenToScrollChange);
  }

  void _listenToScrollChange() {
    if (_scrollController.offset >= 100) {
      setState(() {
        _isScrolled = true;
      });
    } else {
      setState(() {
        _isScrolled = false;
      });
    }
  }

  @override
  void dispose() {
    _scrollController.removeListener(_listenToScrollChange);
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final device = DeviceType(context).deviceType;
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
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
          CustomScrollView(
            scrollBehavior: const ScrollBehavior().copyWith(
              scrollbars: true,
            ),
            controller: _scrollController,
            slivers: [
              SliverAppBar(
                pinned: true,
                floating: true,
                elevation: _isScrolled ? 4.0 : 0.0,
                backgroundColor:
                    _isScrolled ? Colors.black : Colors.transparent,
                automaticallyImplyLeading: false,
                titleSpacing: 0,
                toolbarHeight: Dimens.twenty,
                title: Container(
                  margin: EdgeInsets.symmetric(
                      horizontal: Dimens.thirty, vertical: Dimens.five),
                  child: Row(
                    children: [
                      Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text: 'S',
                              style: Styles.white10
                                  .copyWith(color: ColorsValue.primaryColor),
                            ),
                            TextSpan(
                              text: 'agar ',
                              style: Styles.white10,
                            ),
                            TextSpan(
                              text: 'K',
                              style: Styles.white10
                                  .copyWith(color: ColorsValue.primaryColor),
                            ),
                          ],
                        ),
                      ),
                      Dimens.boxWidth10,
                      Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: Dimens.four, vertical: Dimens.one),
                        decoration: BoxDecoration(
                          color: ColorsValue.primaryColor.withOpacity(0.2),
                          borderRadius: BorderRadius.circular(Dimens.ten),
                          border: Border.all(color: ColorsValue.primaryColor),
                        ),
                        child: Text(
                          'Frontend Developer',
                          style: Styles.white10.copyWith(
                            fontSize: Dimens.three,
                            color: ColorsValue.primaryColor,
                          ),
                        ),
                      ),
                      const Spacer(),
                      TextButton(
                        style: ButtonStyle(
                          foregroundColor:
                              WidgetStateProperty.resolveWith<Color>(
                            (Set<WidgetState> states) {
                              if (states.contains(WidgetState.hovered)) {
                                return ColorsValue.primaryColor;
                              }
                              return Colors.white;
                            },
                          ),
                          overlayColor: WidgetStateProperty.resolveWith<Color>(
                            (Set<WidgetState> states) {
                              return Colors.transparent;
                            },
                          ),
                        ),
                        onPressed: () {},
                        child: Text(
                          'SKILLS',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontFamily: GoogleFonts.poppins().fontFamily,
                          ),
                        ),
                      ),
                      TextButton(
                        style: ButtonStyle(
                          foregroundColor:
                              WidgetStateProperty.resolveWith<Color>(
                            (Set<WidgetState> states) {
                              if (states.contains(WidgetState.hovered)) {
                                return ColorsValue.primaryColor;
                              }
                              return Colors.white;
                            },
                          ),
                          overlayColor: WidgetStateProperty.resolveWith<Color>(
                            (Set<WidgetState> states) {
                              return Colors.transparent;
                            },
                          ),
                        ),
                        onPressed: () {},
                        child: Text(
                          'PROJECTS',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontFamily: GoogleFonts.poppins().fontFamily,
                          ),
                        ),
                      ),
                      TextButton(
                        style: ButtonStyle(
                          foregroundColor:
                              WidgetStateProperty.resolveWith<Color>(
                            (Set<WidgetState> states) {
                              if (states.contains(WidgetState.hovered)) {
                                return ColorsValue.primaryColor;
                              }
                              return Colors.white;
                            },
                          ),
                          overlayColor: WidgetStateProperty.resolveWith<Color>(
                            (Set<WidgetState> states) {
                              return Colors.transparent;
                            },
                          ),
                        ),
                        onPressed: () {},
                        child: Text(
                          'CONTACT',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontFamily: GoogleFonts.poppins().fontFamily,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              // Main Content
              SliverToBoxAdapter(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: Dimens.thirty),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Dimens.boxHeight20,
                      Row(
                        children: [
                          Expanded(
                            child: Text.rich(
                              TextSpan(
                                children: [
                                  TextSpan(
                                      text: 'Hey! I\'m ',
                                      style: Styles.white10
                                          .copyWith(fontSize: Dimens.eight)),
                                  TextSpan(
                                    text: 'S',
                                    style: Styles.white16.copyWith(
                                        color: ColorsValue.primaryColor),
                                  ),
                                  TextSpan(
                                    text: 'agar',
                                    style: Styles.white16,
                                  ),
                                  TextSpan(
                                    text:
                                        '\nI bring 3+ years of experience developing cross-platform applications with Flutter, Dart and Firebase. Proven track record in building efficient, robust applications with strong focus on UI/UX design. Utilize AI-powered tools to optimize development workflows and enhance productivity.',
                                    style: Styles.white10.copyWith(
                                      fontSize: Dimens.four,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                              child:
                                  Lottie.asset('assets/hello_animation.json')),
                        ],
                      ),
                      // Text(
                      //   'Scroll down to see the sticky app bar in action',
                      //   style: TextStyle(
                      //     color: Colors.white,
                      //     fontSize: Dimens.sixteen,
                      //   ),
                      // ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
