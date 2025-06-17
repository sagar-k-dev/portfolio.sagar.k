import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lottie/lottie.dart';
import 'package:portfolio/res/res.dart';
import 'package:portfolio/utils/enums.dart';
import 'package:portfolio/widgets/widgets.dart';

class SkillPage extends StatelessWidget {
  SkillPage({
    super.key,
  });

  final List<Map<String, String>> skills = [
    {
      'title': 'Flutter',
      'image': AssetConstants.flutterLogo,
      'description': 'Cross-platform UI framework',
    },
    {
      'title': 'Dart',
      'image': AssetConstants.dartLogo,
      'description': 'Programming language',
    },
    {
      'title': 'Firebase',
      'image': AssetConstants.firebaseLogo,
      'description': 'Cloud backend solution',
    },
    {
      'title': 'Postman',
      'image': AssetConstants.postmanLogo,
      'description': 'API testing platform',
    },
    {
      'title': 'GitHub',
      'image': AssetConstants.githubLogo,
      'description': 'Code hosting platform',
    },
    {
      'title': 'Bitbucket',
      'image': AssetConstants.bitbucketLogo,
      'description': 'Git code management',
    },
    {
      'title': 'Figma',
      'image': AssetConstants.figmaLogo,
      'description': 'Collaborative UI design',
    },
    {
      'title': 'Adobe XD',
      'image': AssetConstants.adobeXDLogo,
      'description': 'Prototyping UI tool',
    },
    {
      'title': 'Android Studio',
      'image': AssetConstants.androidStudioLogo,
      'description': 'Android development IDE',
    },
    {
      'title': 'VS Code',
      'image': AssetConstants.vsCodeLogo,
      'description': 'Lightweight code editor',
    },
    {
      'title': 'Xcode',
      'image': AssetConstants.xcodeLogo,
      'description': 'iOS development IDE',
    },
    {
      'title': 'Cursor',
      'image': AssetConstants.cursorLogo,
      'description': 'AI-powered coding IDE',
    },
    {
      'title': 'Jira',
      'image': AssetConstants.jiraLogo,
      'description': 'Agile project tracking',
    },
    {
      'title': 'Trello',
      'image': AssetConstants.trelloLogo,
      'description': 'Visual task management',
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
      margin: EdgeInsets.only(
        bottom: device == DeviceScreenType.web ? 0 : 50,
      ),
      child: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              if (device != DeviceScreenType.web)
                Column(
                  mainAxisAlignment: device != DeviceScreenType.web
                      ? MainAxisAlignment.start
                      : MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Lottie.asset(AssetConstants.skillsAnimation,
                        height: MediaQuery.of(context).size.height * 0.5),
                    Text(
                      'Leveraging this diverse set of tools and technologies, I build applications that are not only functional and efficient but also intuitive and engaging for users across different platforms. Each tool helps streamline development and enhance the overall user experience, ensuring every app I create is robust and user-centric.',
                      style: Styles.white10,
                    ),
                    Dimens.boxHeight30,
                    GridView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: device == DeviceScreenType.mobile
                              ? 1
                              : device == DeviceScreenType.tablet
                                  ? orientation == Orientation.portrait
                                      ? 2
                                      : 2
                                  : 3,
                          mainAxisExtent:
                              device == DeviceScreenType.mobile ? 80 : 100,
                          mainAxisSpacing: 10,
                          crossAxisSpacing: 10),
                      itemCount: skills.length,
                      itemBuilder: (context, index) => Container(
                        padding: const EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          color:
                              ColorsValue.primaryColor.withValues(alpha: 0.2),
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: ColorsValue.primaryColor),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          spacing: 10,
                          children: [
                            Expanded(
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(skills[index]['title']!,
                                      style: Styles.white12.copyWith()),
                                  Text(
                                    skills[index]['description']!,
                                    style: Styles.white10.copyWith(
                                      color:
                                          Colors.white.withValues(alpha: 0.5),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SvgPicture.asset(
                              skills[index]['image']!,
                              width: 30,
                              height: 30,
                              fit: BoxFit.cover,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              if (device == DeviceScreenType.web)
                Padding(
                  padding: const EdgeInsets.only(bottom: 100),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    spacing: 100,
                    children: [
                      Expanded(
                        flex: 2,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(
                              height: 300,
                              child: Lottie.asset(
                                AssetConstants.skillsAnimation,
                              ),
                            ),
                            Text(
                              'Leveraging this diverse set of tools and technologies, I build applications that are not only functional and efficient but also intuitive and engaging for users across different platforms. Each tool helps streamline development and enhance the overall user experience, ensuring every app I create is robust and user-centric.',
                              style: Styles.white10,
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 3,
                        child: Wrap(
                          spacing: 10,
                          runSpacing: 10,
                          children: skills
                              .map(
                                (skill) => Container(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 12, vertical: 8),
                                  decoration: BoxDecoration(
                                    color: ColorsValue.primaryColor
                                        .withValues(alpha: 0.2),
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(
                                        color: ColorsValue.primaryColor),
                                  ),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    spacing: 10,
                                    children: [
                                      Column(
                                        spacing: 5,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(skill['title']!,
                                              style: Styles.white10.copyWith()),
                                          Text(skill['description']!,
                                              style: Styles.white8),
                                        ],
                                      ),
                                      SvgPicture.asset(
                                        skill['image']!,
                                        width: 25,
                                        height: 25,
                                        fit: BoxFit.cover,
                                      ),
                                    ],
                                  ),
                                ),
                              )
                              .toList(),
                        ),
                      ),
                    ],
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
