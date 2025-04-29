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
            controller: _scrollController,
            slivers: [
              SliverAppBar(
                pinned: true,
                floating: true,
                elevation: _isScrolled ? 4.0 : 0.0,
                backgroundColor:
                    _isScrolled ? Colors.black : Colors.transparent,
                automaticallyImplyLeading: false,
                title: Container(
                  padding: EdgeInsets.symmetric(horizontal: Dimens.thirty),
                  child: Row(
                    children: [
                      Text(
                        'Sagar K',
                        style: Styles.white10.copyWith(
                          color: ColorsValue.primaryColor,
                          fontWeight: FontWeight.bold,
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
                          'ABOUT',
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
                      Dimens.boxHeight40,
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
                                    text: 'Sagar',
                                    style: Styles.white16,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                              child: Image.asset('assets/flutter_birds.png')),
                        ],
                      ),
                      SizedBox(height: Dimens.twenty),
                      Text(
                        'Scroll down to see the sticky app bar in action',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: Dimens.sixteen,
                        ),
                      ),

                      // Add more content to make scrolling possible
                      SizedBox(height: Dimens.fifty),
                      ...List.generate(
                        10,
                        (index) => Container(
                          margin: EdgeInsets.only(bottom: Dimens.twenty),
                          height: Dimens.twoHundred,
                          decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(0.1),
                            borderRadius: BorderRadius.circular(Dimens.eight),
                          ),
                          child: Center(
                            child: Text(
                              'Content ${index + 1}',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: Dimens.twenty,
                              ),
                            ),
                          ),
                        ),
                      ),
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
