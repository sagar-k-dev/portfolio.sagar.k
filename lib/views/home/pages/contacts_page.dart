import 'package:flutter/material.dart';
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
    return SizedBox(
      height: device == DeviceScreenType.web
          ? MediaQuery.of(context).size.height - AppBar().preferredSize.height
          : null,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'CONTACT ME',
            style: Styles.white14.copyWith(
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
