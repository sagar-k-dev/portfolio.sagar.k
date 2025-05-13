import 'package:flutter/material.dart';
import 'package:portfolio/res/res.dart';
import 'package:portfolio/views/home/widgets/widgets.dart';

class SkillPage extends StatelessWidget {
  const SkillPage({
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
            'SKILLS',
            style: Styles.white20.copyWith(
              color: ColorsValue.primaryColor,
              fontWeight: FontWeight.bold,
            ),
          ),
          Dimens.boxHeight20,
          GridView.builder(
            shrinkWrap: true,
            primary: true,
            itemCount: 2,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 1.5,
              mainAxisSpacing: Dimens.fifteen,
              crossAxisSpacing: Dimens.fifteen,
            ),
            itemBuilder: (context, index) {
              return SkillsItem(
                title: 'Flutter',
                image: 'assets/flutter_logo.svg',
                description:
                    'UI toolkit by Google for building natively compiled applications for mobile, web, and desktop',
              );
            },
          ),
        ],
      ),
    );
  }
}
