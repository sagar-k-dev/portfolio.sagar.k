import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_svg/svg.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:portfolio/res/res.dart';
import 'package:portfolio/utils/utils.dart';
import 'package:portfolio/widgets/widgets.dart';

class ProjectsPage extends StatelessWidget {
  ProjectsPage({
    super.key,
    required this.onContactMePressed,
  });

  final VoidCallback onContactMePressed;

  final List<Map<String, String>> projects = [
    {
      'title': 'instrucko',
      'image': AssetConstants.instrucko,
      'playStoreLink':
          'https://play.google.com/store/apps/details?id=com.instrucko',
      'appStoreLink': 'https://apps.apple.com/in/app/instrucko/id1632440837',
      'description':
          'Instrucko is an innovative educational platform designed to connect students in the UK and India with tailored learning experiences. The app empowers parents to book on-demand classes for their children, selecting subjects and age groups that best fit their needs. Key features include one-on-one video sessions, real-time chat, and live streaming, ensuring interactive and flexible learning. The integrated wallet system streamlines payments, making class bookings seamless and secure. This project demonstrates my ability to build user-centric, feature-rich applications that enhance online education.',
    },
    {
      'title': 'Dignity Transportation',
      'image': AssetConstants.dignityTransportation,
      'playStoreLink':
          'https://play.google.com/store/apps/details?id=com.dignity_transportation',
      'appStoreLink':
          'https://apps.apple.com/us/app/dignity-transportation/id6466097977',
      'description':
          'Dignity Transportation is a specialized mobility platform I developed for Ontario, Canada\'s premier medical transport service. The app streamlines coordination between dispatchers and drivers, featuring real-time GPS tracking, optimized routing for medical appointments, and a patient-centric booking interface. My implementation includes secure medical data handling, appointment scheduling integration, and a robust notification system for both drivers and passengers. The solution significantly improved operational efficiency while enhancing the transportation experience for vulnerable patients across the Greater Toronto Area.',
    },
    {
      'title': 'ClubCentral',
      'image': AssetConstants.foretees,
      'playStoreLink':
          'https://play.google.com/store/apps/details?id=com.threembed.fortees',
      'appStoreLink':
          'https://apps.apple.com/us/app/clubcentral-by-foretees/id943470455',
      'description':
          'ClubCentral transforms private club experiences through seamless digital connectivity. This elegant mobile solution delivers instant access to reservations, event registration, and exclusive member areas. Members receive personalized notifications about club happenings while enjoying one-tap booking for tee times, courts, and dining. My development focused on creating intuitive navigation patterns, implementing secure authentication protocols, and designing responsive interfaces that work across all devices. The platform dramatically increased digital engagement among traditionally non-tech-savvy members while providing club administrators with valuable usage analytics.',
    },
    {
      'title': 'Forecaddie',
      'image': AssetConstants.forecaddie,
      'playStoreLink':
          'https://play.google.com/store/apps/details?id=com.foretees.foretees_caddie&hl=en_IN',
      'appStoreLink': 'https://apps.apple.com/in/app/forecaddie/id1571143862',
      'websiteLink': 'https://foretees-caddie.web.app/',
      'description':
          'ForeCaddie revolutionizes golf course operations with specialized tools for caddies and their managers. This purpose-built platform streamlines loop assignments through intelligent scheduling algorithms and real-time availability tracking. Caddies receive instant push notifications about upcoming assignments, course conditions, and special instructions directly from management. The intuitive calendar interface allows staff to mark availability, request time off, and track earnings—all from their mobile device. My development incorporated location-based features, secure communication channels, and offline functionality to accommodate varying course environments, resulting in 40% reduction in scheduling conflicts and significantly improved caddie retention rates.',
    },
    {
      'title': 'Plateaway',
      'image': AssetConstants.plateaway,
      'websiteLink': 'https://plateway.newkommerce.com/',
      'description':
          'Plateaway delivers comprehensive restaurant management through an intuitive admin dashboard. This robust platform centralizes product inventory, menu customization, promotional offer creation, and staff role management in one streamlined interface. Restaurant owners gain complete control over their digital presence with drag-and-drop menu builders, time-sensitive promotional tools, and granular permission settings for staff access. My development focused on creating responsive data visualization components, implementing batch operations for menu updates, and designing intuitive workflows that minimize training requirements. The system\'s analytics module provides actionable insights on menu performance, helping owners optimize their offerings while the integrated user management ensures proper access controls across all restaurant operations.',
    },
    {
      'title': 'Find A Professional',
      'image': AssetConstants.findAPro,
      'appStoreLink':
          'https://apps.apple.com/us/app/find-a-professional/id6463403025',
      'websiteLink': '',
      'description':
          'Find A Professional connects users with experts across diverse fields through a streamlined digital marketplace. The platform features verified profiles, secure messaging, and seamless video calls, allowing direct access to specialists from programmers to psychologists. Users can join live streams for group learning or schedule private sessions based on real-time availability. My development focused on creating intuitive search filters, encrypted communications, and a responsive interface that works flawlessly across all devices.',
    },
    {
      'title': 'Your project display here.\nLet\'s connect! 😊',
      'image': AssetConstants.youPlaceholder,
      'description':
          'Ready to turn your vision into reality? This spotlight is waiting for your groundbreaking idea! Let\'s create something extraordinary together.',
    },
  ];

  @override
  Widget build(BuildContext context) {
    final device = DeviceType(context).deviceType;
    final orientation = MediaQuery.of(context).orientation;
    return Container(
      height: device == DeviceScreenType.web
          ? MediaQuery.of(context).size.height - AppBar().preferredSize.height
          : null,
      padding: EdgeInsets.only(
        top: device == DeviceScreenType.web ? 0 : 20,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Projects Accomplished',
            style: Styles.white14.copyWith(
              color: ColorsValue.primaryColor,
              fontWeight: FontWeight.bold,
            ),
          ),
          Dimens.boxHeight20,
          device == DeviceScreenType.web
              ? _buildWebCarousel(context)
              : _buildMobileItem(device, orientation),
          Dimens.boxHeight50,
        ],
      ),
    );
  }

  MasonryGridView _buildMobileItem(
      DeviceScreenType device, Orientation orientation) {
    return MasonryGridView.count(
      crossAxisCount: device == DeviceScreenType.mobile
          ? 1
          : device == DeviceScreenType.tablet
              ? orientation == Orientation.portrait
                  ? 1
                  : 2
              : 3,
      mainAxisSpacing: 10,
      crossAxisSpacing: 10,
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: projects.length,
      itemBuilder: (context, index) => Container(
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: ColorsValue.primaryColor.withValues(alpha: 0.2),
          borderRadius: BorderRadius.circular(15),
          border: Border.all(color: ColorsValue.primaryColor),
        ),
        child: Column(
          spacing: 15,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              spacing: 15,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.asset(
                    projects[index]['image']!,
                    height: 70,
                    width: 70,
                    fit: BoxFit.cover,
                  ),
                ),
                Expanded(
                  child: Text(
                    projects[index]['title']!,
                    style: Styles.white12,
                  ),
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  projects[index]['description']!,
                  style: Styles.white8,
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                ),
                Dimens.boxHeight5,
                InkWell(
                  splashFactory: NoSplash.splashFactory,
                  highlightColor: Colors.transparent,
                  onTap: () {
                    index == projects.length - 1
                        ? onContactMePressed()
                        : showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              final screenSize = MediaQuery.of(context).size;
                              final dialogWidth = screenSize.width *
                                  (device == DeviceScreenType.mobile
                                      ? 0.8
                                      : device == DeviceScreenType.tablet
                                          ? 0.7
                                          : 0.5);
                              final dialogHeight = screenSize.height *
                                  (device == DeviceScreenType.mobile
                                      ? 0.6
                                      : 0.5);

                              return Dialog(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                backgroundColor: Colors.black,
                                insetPadding: const EdgeInsets.symmetric(
                                  horizontal: 20,
                                  vertical: 24,
                                ),
                                child: Container(
                                  width: dialogWidth,
                                  constraints: BoxConstraints(
                                    maxWidth: 600,
                                    maxHeight: dialogHeight,
                                  ),
                                  padding: const EdgeInsets.all(16),
                                  decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.circular(20),
                                    border: Border.all(
                                      color: ColorsValue.primaryColor,
                                      width: 1,
                                    ),
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        projects[index]['title'] ??
                                            'Project Details',
                                        style: Styles.white12.copyWith(
                                          color: ColorsValue.primaryColor,
                                        ),
                                      ),
                                      Dimens.boxHeight10,
                                      Flexible(
                                        child: SingleChildScrollView(
                                          child: Text(
                                            projects[index]['description']!,
                                            style: Styles.white8.copyWith(),
                                          ),
                                        ),
                                      ),
                                      Dimens.boxHeight10,
                                      Align(
                                        alignment: Alignment.centerRight,
                                        child: TextButton(
                                          onPressed: () =>
                                              Navigator.pop(context),
                                          child: Text(
                                            'Close',
                                            style: Styles.white10.copyWith(
                                              color: ColorsValue.primaryColor,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            },
                          );
                  },
                  child: Text(
                    index == projects.length - 1 ? 'Contact me' : '...more',
                    style: Styles.white10.copyWith(
                      fontWeight: FontWeight.w500,
                      color: ColorsValue.primaryColor,
                    ),
                  ),
                ),
                Dimens.boxHeight5,
                if (index != projects.length - 1)
                  Row(
                    spacing: 10,
                    children: [
                      Text(
                        'Available on:',
                        style: Styles.white8.copyWith(
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      if (projects[index]['playStoreLink'] != null &&
                          projects[index]['playStoreLink']!.isNotEmpty)
                        InkWell(
                          onTap: () => Utility.launchURL(
                            projects[index]['playStoreLink']!,
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(5),
                            child: SvgPicture.asset(
                              AssetConstants.playStoreLogo,
                              height: 25,
                              width: 25,
                            ),
                          ),
                        ),
                      if (projects[index]['appStoreLink'] != null &&
                          projects[index]['appStoreLink']!.isNotEmpty)
                        InkWell(
                          onTap: () => Utility.launchURL(
                            projects[index]['appStoreLink']!,
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(5),
                            child: SvgPicture.asset(
                              AssetConstants.appStoreLogo,
                              height: 25,
                              width: 25,
                            ),
                          ),
                        ),
                      if (projects[index]['websiteLink'] != null &&
                          projects[index]['websiteLink']!.isNotEmpty)
                        InkWell(
                          onTap: () => Utility.launchURL(
                            projects[index]['websiteLink']!,
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(5),
                            child: SvgPicture.asset(
                              AssetConstants.websiteLogo,
                              height: 25,
                              width: 25,
                            ),
                          ),
                        ),
                    ],
                  ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildWebCarousel(BuildContext context) {
    return CarouselSlider.builder(
      itemCount: projects.length,
      itemBuilder: (context, index, realIndex) {
        return Container(
          padding: const EdgeInsets.all(16),
          margin: const EdgeInsets.symmetric(vertical: 16),
          decoration: BoxDecoration(
            color: ColorsValue.primaryColor.withValues(alpha: 0.2),
            borderRadius: BorderRadius.circular(15),
            border: Border.all(color: ColorsValue.primaryColor),
          ),
          child: SingleChildScrollView(
            physics: const NeverScrollableScrollPhysics(),
            child: Column(
              spacing: 15,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  spacing: 15,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image.asset(
                        projects[index]['image']!,
                        height: 70,
                        width: 70,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Expanded(
                      child: Text(
                        projects[index]['title']!,
                        style: Styles.white12,
                      ),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      projects[index]['description']!,
                      style: Styles.white8,
                    ),
                    if (index == projects.length - 1) ...[
                      Dimens.boxHeight20,
                      InkWell(
                        splashFactory: NoSplash.splashFactory,
                        highlightColor: Colors.transparent,
                        onTap: () {
                          index == projects.length - 1
                              ? onContactMePressed()
                              : null;
                        },
                        child: Text(
                          index == projects.length - 1 ? 'Contact Me' : '',
                          style: Styles.white10.copyWith(
                            fontWeight: FontWeight.w500,
                            color: ColorsValue.primaryColor,
                          ),
                        ),
                      ),
                    ],
                    Dimens.boxHeight20,
                    if (index != projects.length - 1)
                      Row(
                        spacing: 10,
                        children: [
                          Text(
                            'Available on:',
                            style: Styles.white8.copyWith(
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          if (projects[index]['playStoreLink'] != null &&
                              projects[index]['playStoreLink']!.isNotEmpty)
                            InkWell(
                              onTap: () => Utility.launchURL(
                                projects[index]['playStoreLink']!,
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(5),
                                child: SvgPicture.asset(
                                  AssetConstants.playStoreLogo,
                                  height: 25,
                                  width: 25,
                                ),
                              ),
                            ),
                          if (projects[index]['appStoreLink'] != null &&
                              projects[index]['appStoreLink']!.isNotEmpty)
                            InkWell(
                              onTap: () => Utility.launchURL(
                                projects[index]['appStoreLink']!,
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(5),
                                child: SvgPicture.asset(
                                  AssetConstants.appStoreLogo,
                                  height: 25,
                                  width: 25,
                                ),
                              ),
                            ),
                          if (projects[index]['websiteLink'] != null &&
                              projects[index]['websiteLink']!.isNotEmpty)
                            InkWell(
                              onTap: () => Utility.launchURL(
                                projects[index]['websiteLink']!,
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(5),
                                child: SvgPicture.asset(
                                  AssetConstants.websiteLogo,
                                  height: 25,
                                  width: 25,
                                ),
                              ),
                            ),
                        ],
                      ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
      options: CarouselOptions(
        height: 450,
        autoPlay: true,
        autoPlayInterval: const Duration(seconds: 2),
        autoPlayAnimationDuration: const Duration(milliseconds: 900),
        autoPlayCurve: Curves.linearToEaseOut,
        enlargeCenterPage: true,
        enlargeFactor: 0.2,
        viewportFraction: 0.6,
        enableInfiniteScroll: true,
        pauseAutoPlayOnTouch: true,
        pauseAutoPlayInFiniteScroll: false,
      ),
    );
  }
}
