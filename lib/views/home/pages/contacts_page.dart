import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portfolio/res/res.dart';
import 'package:portfolio/utils/utils.dart';
import 'package:portfolio/widgets/widgets.dart';

class ContactsPage extends StatelessWidget {
  const ContactsPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final device = DeviceType(context).deviceType;
    final nameTextController = TextEditingController();
    final emailTextController = TextEditingController();
    final subjectTextController = TextEditingController();
    final messageTextController = TextEditingController();
    return SizedBox(
      child: SingleChildScrollView(
        physics: const NeverScrollableScrollPhysics(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: 'C',
                    style: Styles.white16.copyWith(
                        color: ColorsValue.primaryColor,
                        fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                    text: 'ontact ',
                    style: Styles.white14,
                  ),
                  TextSpan(
                    text: 'M',
                    style: Styles.white16.copyWith(
                        color: ColorsValue.primaryColor,
                        fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                    text: 'e',
                    style: Styles.white14,
                  ),
                ],
              ),
            ),
            Dimens.boxHeight20,
            (device == DeviceScreenType.web)
                ? Row(
                    spacing: Dimens.fifty,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color:
                              ColorsValue.primaryColor.withValues(alpha: 0.1),
                          borderRadius: BorderRadius.circular(Dimens.fifteen),
                          border: Border.all(color: ColorsValue.primaryColor),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(Dimens.fifteen),
                          child: Image.asset(
                            AssetConstants.profile,
                            width: MediaQuery.of(context).size.width * 0.15,
                            height: MediaQuery.of(context).size.width * 0.15,
                            fit: BoxFit.fitHeight,
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          spacing: Dimens.fifteen,
                          children: [
                            Text('Who am I?', style: Styles.white12),
                            Text(
                              'A self-taught Flutter developer who turned curiosity into a passion! Starting from scratch, I embarked on an exciting journey of learning application development. Through countless hours of coding, experimenting, and building, I\'ve transformed my fascination with technology into the ability to create beautiful, functional apps. Every line of code I write is a testament to my dedication to learning and growing in this ever-evolving tech world.',
                              style: Styles.white8,
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Container(),
                      ),
                    ],
                  )
                : Column(
                    spacing: Dimens.fifteen,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color:
                              ColorsValue.primaryColor.withValues(alpha: 0.1),
                          borderRadius: BorderRadius.circular(Dimens.fifteen),
                          border: Border.all(color: ColorsValue.primaryColor),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(Dimens.fifteen),
                          child: Image.asset(
                            AssetConstants.profile,
                            width: device == DeviceScreenType.mobile
                                ? MediaQuery.of(context).size.width * 0.3
                                : MediaQuery.of(context).size.width * 0.2,
                            height: device == DeviceScreenType.mobile
                                ? MediaQuery.of(context).size.width * 0.3
                                : MediaQuery.of(context).size.width * 0.2,
                            fit: BoxFit.fitHeight,
                          ),
                        ),
                      ),
                      Text('Who am I?', style: Styles.white12),
                      Text(
                        'A self-taught Flutter developer who turned curiosity into a passion! Starting from scratch, I embarked on an exciting journey of learning application development. Through countless hours of coding, experimenting, and building, I\'ve transformed my fascination with technology into the ability to create beautiful, functional apps. Every line of code I write is a testament to my dedication to learning and growing in this ever-evolving tech world.',
                        style: Styles.white8,
                      ),
                    ],
                  ),
            Dimens.boxHeight20,
            Text('Let\'s discuss your queries.', style: Styles.white10),
            Dimens.boxHeight10,
            (device == DeviceScreenType.web)
                ? Row(
                    spacing: Dimens.forty,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        flex: 2,
                        child: Column(
                          spacing: Dimens.ten,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            ContactOptionCard(
                              title: 'Email me at',
                              value: 'sagarkdev7@gmail.com',
                              onTap: () => Utility.launchURL(
                                  'mailto:sagarkdev7@gmail.com'),
                            ),
                            ContactOptionCard(
                              title: 'Chat over WhatsApp',
                              value: '+91 7381748199',
                              onTap: () => Utility.launchURL(
                                  'https://wa.me/917381748199'),
                            ),
                            ContactOptionCard(
                              title: 'Connect on LinkedIn',
                              value: 'Sagar K',
                              onTap: () => Utility.launchURL(
                                  'https://www.linkedin.com/in/sagar-k-bb1a97195/'),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 3,
                        child: Column(
                          spacing: Dimens.ten,
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Row(
                              spacing: Dimens.ten,
                              children: [
                                Expanded(
                                  child: CustomTextfield(
                                    textEditingController: nameTextController,
                                    hintText: 'Enter your name',
                                    labelText: 'Name',
                                    isFilled: true,
                                    fillColor: ColorsValue.primaryColor
                                        .withValues(alpha: 0.1),
                                    onChange: (String value) {},
                                  ),
                                ),
                                Expanded(
                                  child: CustomTextfield(
                                    textEditingController: emailTextController,
                                    hintText: 'Enter your email',
                                    labelText: 'Email',
                                    isFilled: true,
                                    fillColor: ColorsValue.primaryColor
                                        .withValues(alpha: 0.15),
                                    onChange: (String value) {},
                                  ),
                                ),
                              ],
                            ),
                            CustomTextfield(
                              textEditingController: subjectTextController,
                              hintText: 'Want to connect for..',
                              labelText: 'Subject',
                              isFilled: true,
                              fillColor: ColorsValue.primaryColor
                                  .withValues(alpha: 0.1),
                              onChange: (String value) {},
                            ),
                            CustomTextfield(
                              textEditingController: messageTextController,
                              hintText: 'Write your query here',
                              labelText: 'Message',
                              isFilled: true,
                              fillColor: ColorsValue.primaryColor
                                  .withValues(alpha: 0.1),
                              maxlines: 4,
                              onChange: (String value) {},
                            ),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: ColorsValue.primaryColor
                                    .withValues(alpha: 0.8),
                                foregroundColor: Colors.white,
                                shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.circular(Dimens.eight),
                                ),
                              ),
                              onPressed: () {
                                final subject = Uri.encodeComponent(
                                    subjectTextController.text);
                                final body = Uri.encodeComponent(
                                    messageTextController.text);
                                final mailtoUrl =
                                    'mailto:sagarkdev7@gmail.com?subject=$subject&body=$body';
                                Utility.launchURL(mailtoUrl);
                              },
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  SvgPicture.asset(
                                    AssetConstants.send,
                                    width: Dimens.twenty,
                                    height: Dimens.twenty,
                                  ),
                                  Dimens.boxWidth10,
                                  Text('Send', style: Styles.white8),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  )
                : Column(
                    spacing: Dimens.ten,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      ContactOptionCard(
                        title: 'Email me at',
                        value: 'sagarkdev7@gmail.com',
                        onTap: () =>
                            Utility.launchURL('mailto:sagarkdev7@gmail.com'),
                      ),
                      ContactOptionCard(
                        title: 'Chat over WhatsApp',
                        value: '+91 7381748199',
                        onTap: () =>
                            Utility.launchURL('https://wa.me/917381748199'),
                      ),
                      ContactOptionCard(
                        title: 'Connect on LinkedIn',
                        value: 'Sagar K',
                        onTap: () => Utility.launchURL(
                            'https://www.linkedin.com/in/sagar-k-bb1a97195/'),
                      ),
                      // Dimens.boxHeight16,
                      const Divider(
                          color: ColorsValue.primaryColor,
                          thickness: 0.5,
                          height: 30),
                      CustomTextfield(
                        textEditingController: nameTextController,
                        hintText: 'Enter your name',
                        labelText: 'Name',
                        isFilled: true,
                        fillColor:
                            ColorsValue.primaryColor.withValues(alpha: 0.15),
                        onChange: (String value) {},
                      ),
                      CustomTextfield(
                        textEditingController: emailTextController,
                        hintText: 'Enter your email',
                        labelText: 'Email',
                        isFilled: true,
                        fillColor:
                            ColorsValue.primaryColor.withValues(alpha: 0.1),
                        onChange: (String value) {},
                      ),
                      CustomTextfield(
                        textEditingController: subjectTextController,
                        hintText: 'Want to connect for..',
                        labelText: 'Subject',
                        isFilled: true,
                        fillColor:
                            ColorsValue.primaryColor.withValues(alpha: 0.1),
                        onChange: (String value) {},
                      ),
                      CustomTextfield(
                        textEditingController: messageTextController,
                        hintText: 'Write your query here',
                        labelText: 'Message',
                        isFilled: true,
                        fillColor:
                            ColorsValue.primaryColor.withValues(alpha: 0.1),
                        maxlines: 4,
                        onChange: (String value) {},
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor:
                              ColorsValue.primaryColor.withValues(alpha: 0.8),
                          foregroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(Dimens.eight),
                          ),
                        ),
                        onPressed: () {
                          final subject =
                              Uri.encodeComponent(subjectTextController.text);
                          final body =
                              Uri.encodeComponent(messageTextController.text);
                          final mailtoUrl =
                              'mailto:sagarkdev7@gmail.com?subject=$subject&body=$body';
                          Utility.launchURL(mailtoUrl);
                        },
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            SvgPicture.asset(
                              AssetConstants.send,
                              width: Dimens.twenty,
                              height: Dimens.twenty,
                            ),
                            Dimens.boxWidth10,
                            Text('Send', style: Styles.white8),
                          ],
                        ),
                      ),
                    ],
                  ),
            Dimens.boxHeight40,
            const Divider(color: ColorsValue.primaryColor, thickness: 0.5),
            Container(
              alignment: Alignment.center,
              child: Wrap(
                spacing: Dimens.twenty,
                runSpacing: Dimens.ten,
                alignment: WrapAlignment.center,
                children: [
                  HoverElevatedButton(
                    onPressed: () =>
                        Utility.launchURL('https://wa.me/917381748199'),
                    icon: AssetConstants.whatsapp,
                    label: Text('WhatsApp', style: Styles.white8),
                    backgroundColor: ColorsValue.primaryColor,
                  ),
                  HoverElevatedButton(
                    onPressed: () =>
                        Utility.launchURL('mailto:sagarkdev7@gmail.com'),
                    icon: AssetConstants.email,
                    label: Text('Email', style: Styles.white8),
                    backgroundColor: Colors.red,
                  ),
                  HoverElevatedButton(
                    onPressed: () => Utility.launchURL(
                        'https://www.linkedin.com/in/sagar-k-bb1a97195/'),
                    icon: AssetConstants.linkedin,
                    label: Text('LinkedIn', style: Styles.white8),
                    backgroundColor: Colors.blue,
                  ),
                  HoverElevatedButton(
                    onPressed: () =>
                        Utility.launchURL('https://github.com/sagar-k-dev'),
                    icon: AssetConstants.github,
                    label: Text('GitHub', style: Styles.white8),
                    backgroundColor: const Color(0xFF612b8f),
                  ),
                  HoverElevatedButton(
                    onPressed: () => Utility.launchURL(
                        'https://www.instagram.com/sagarstark7/'),
                    icon: AssetConstants.instagram,
                    label: Text('Instagram', style: Styles.white8),
                    backgroundColor: Colors.pink,
                  ),
                ],
              ),
            ),
            const Divider(color: ColorsValue.primaryColor, thickness: 0.5),
            Container(
              width: MediaQuery.of(context).size.width,
              alignment: Alignment.center,
              padding: Dimens.edgeInsets16,
              child: Text(
                'Thanks for stopping by! Crafted with 💙 using Flutter by Sagar K.',
                style: Styles.white8,
                textAlign: TextAlign.center,
              ),
            ),
            Dimens.boxHeight10,
          ],
        ),
      ),
    );
  }
}

class ContactOptionCard extends StatelessWidget {
  const ContactOptionCard({
    super.key,
    required this.title,
    required this.value,
    required this.onTap,
  });

  final String title;
  final String value;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(Dimens.fifteen),
      onTap: onTap,
      child: Container(
        padding: Dimens.edgeInsets16,
        decoration: BoxDecoration(
          color: ColorsValue.primaryColor.withValues(alpha: 0.1),
          borderRadius: BorderRadius.circular(Dimens.fifteen),
          border: Border.all(color: ColorsValue.primaryColor),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: Styles.white8,
                ),
                Text(
                  value,
                  style: Styles.white10.copyWith(
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Poppins',
                  ),
                ),
              ],
            ),
            const Icon(
              Icons.arrow_forward_ios_rounded,
              color: ColorsValue.primaryColor,
              size: Dimens.twenty,
            ),
          ],
        ),
      ),
    );
  }
}

class HoverElevatedButton extends StatefulWidget {
  final Function()? onPressed;
  final String icon;
  final Widget label;
  final Color backgroundColor;

  const HoverElevatedButton({
    super.key,
    required this.onPressed,
    required this.icon,
    required this.label,
    required this.backgroundColor,
  });

  @override
  State<HoverElevatedButton> createState() => _HoverElevatedButtonState();
}

class _HoverElevatedButtonState extends State<HoverElevatedButton> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => isHovered = true),
      onExit: (_) => setState(() => isHovered = false),
      child: SizedBox(
        width: 150,
        child: ElevatedButton.icon(
          style: ElevatedButton.styleFrom(
            backgroundColor:
                isHovered ? widget.backgroundColor : Colors.transparent,
            foregroundColor: Colors.white,
            surfaceTintColor: Colors.transparent,
            shadowColor: Colors.transparent,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(Dimens.fifty),
            ),
            alignment: Alignment.center,
          ),
          onPressed: widget.onPressed,
          label: Row(
            spacing: Dimens.ten,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SvgPicture.asset(
                widget.icon,
                width: Dimens.twenty,
                height: Dimens.twenty,
              ),
              widget.label,
            ],
          ),
        ),
      ),
    );
  }
}
