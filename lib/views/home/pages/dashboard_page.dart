import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lottie/lottie.dart';
import 'package:portfolio/res/res.dart';
import 'package:portfolio/utils/utils.dart';
import 'package:portfolio/widgets/responsive_builder.dart';

class DashboardPage extends StatelessWidget {
  final Function()? onWorkButtonPressed;

  const DashboardPage({
    super.key,
    this.onWorkButtonPressed,
  });

  @override
  Widget build(BuildContext context) {
    final device = DeviceType(context).deviceType;

    return SizedBox(
      height: device == DeviceScreenType.web
          ? MediaQuery.of(context).size.height - AppBar().preferredSize.height
          : null,
      child: Column(
        mainAxisAlignment: device != DeviceScreenType.web
            ? MainAxisAlignment.start
            : MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (device != DeviceScreenType.web) ...[
            Center(
              child: Lottie.asset(AssetConstants.helloAnimation),
            ),
            Dimens.boxHeight20,
          ],
          Padding(
            padding: EdgeInsets.only(
                bottom: device == DeviceScreenType.web
                    ? Dimens.hundred
                    : Dimens.zero),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text.rich(
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
                      ),
                      Text(
                        'I create responsive and adaptive apps for:',
                        style: Styles.white10,
                      ),
                      Dimens.boxHeight10,
                      const Row(
                        spacing: 10,
                        children: [
                          CustomChipWidget(
                            title: 'ANDROID',
                            image: AssetConstants.androidLogo,
                          ),
                          CustomChipWidget(
                            title: 'IOS',
                            image: AssetConstants.appleLogo,
                          ),
                          CustomChipWidget(
                            title: 'WEB',
                            image: AssetConstants.webAppLogo,
                          ),
                        ],
                      ),
                      if (device == DeviceScreenType.web)
                        Padding(
                          padding: const EdgeInsets.only(top: Dimens.fifty),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Expanded(
                                child: ElevatedButton(
                                  style: ButtonStyle(
                                    padding: WidgetStateProperty.all(
                                        const EdgeInsets.symmetric(
                                            vertical: Dimens.fifteen)),
                                    backgroundColor: WidgetStateProperty.all(
                                        ColorsValue.primaryColor
                                            .withValues(alpha: 0.8)),
                                  ),
                                  onPressed: onWorkButtonPressed,
                                  child: Text(
                                    'My Work',
                                    style: Styles.white8.copyWith(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ),
                              ),
                              Dimens.boxWidth20,
                              Expanded(
                                child: ElevatedButton(
                                  style: ButtonStyle(
                                    padding: WidgetStateProperty.all(
                                        const EdgeInsets.symmetric(
                                            vertical: Dimens.fifteen)),
                                    backgroundColor: WidgetStateProperty.all(
                                        ColorsValue.primaryColor
                                            .withValues(alpha: 0.2)),
                                    splashFactory: NoSplash.splashFactory,
                                    shape: WidgetStateProperty.all(
                                      RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(Dimens.fifty),
                                        side: const BorderSide(
                                            color: ColorsValue.primaryColor,
                                            width: 1.5),
                                      ),
                                    ),
                                  ),
                                  onPressed: () => Utility.launchURL(
                                      'https://drive.google.com/file/d/1DOFouYEewyGlTI4PTtkGk6uwX7jPmLjq/view?usp=sharing'),
                                  child: Text(
                                    'My Resume',
                                    style: Styles.white8.copyWith(
                                        color: ColorsValue.primaryColor,
                                        fontWeight: FontWeight.w600),
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
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: Dimens.fifty, bottom: Dimens.fifty),
                      child: Lottie.asset(AssetConstants.helloAnimation),
                    ),
                  ),
              ],
            ),
          ),
          if (device != DeviceScreenType.web)
            Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Dimens.boxHeight20,
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      padding: WidgetStateProperty.all(
                          const EdgeInsets.symmetric(vertical: Dimens.ten)),
                      backgroundColor:
                          WidgetStateProperty.all(ColorsValue.primaryColor),
                    ),
                    onPressed: onWorkButtonPressed,
                    child: Text(
                      'My Work',
                      style: Styles.white8.copyWith(
                          fontWeight: FontWeight.w600, color: Colors.black),
                    ),
                  ),
                ),
                Dimens.boxHeight10,
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      padding: WidgetStateProperty.all(
                          const EdgeInsets.symmetric(vertical: Dimens.ten)),
                      backgroundColor: WidgetStateProperty.all(
                          ColorsValue.primaryColor.withValues(alpha: 0.2)),
                      splashFactory: NoSplash.splashFactory,
                      shape: WidgetStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(Dimens.fifty),
                          side: const BorderSide(
                              color: ColorsValue.primaryColor, width: 1.5),
                        ),
                      ),
                    ),
                    onPressed: () {},
                    child: Text(
                      'My Resume',
                      style: Styles.white8.copyWith(
                          color: ColorsValue.primaryColor,
                          fontWeight: FontWeight.w600),
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

class CustomChipWidget extends StatelessWidget {
  final String title;
  final String image;
  const CustomChipWidget({
    super.key,
    required this.title,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
          horizontal: Dimens.ten, vertical: Dimens.three),
      decoration: BoxDecoration(
        color: ColorsValue.primaryColor.withValues(alpha: 0.1),
        borderRadius: BorderRadius.circular(Dimens.fifty),
        border: Border.all(color: ColorsValue.primaryColor),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        spacing: 5,
        children: [
          SvgPicture.asset(
            image,
            height: 20,
            width: 20,
            colorFilter: const ColorFilter.mode(
              ColorsValue.primaryColor,
              BlendMode.srcIn,
            ),
          ),
          Text(
            title,
            style: Styles.white8.copyWith(
              color: ColorsValue.primaryColor,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
