import 'package:flutter/material.dart';
import 'package:portfolio/res/res.dart';

class ContactsPage extends StatelessWidget {
  const ContactsPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
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
