import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portfolio/res/res.dart';

class SkillsItem extends StatelessWidget {
  const SkillsItem({
    super.key,
    required this.title,
    required this.image,
    required this.description,
  });

  final String title;
  final String image;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(Dimens.ten),
      decoration: BoxDecoration(
        color: ColorsValue.primaryColor.withValues(alpha: 0.2),
        borderRadius: BorderRadius.circular(Dimens.ten),
        border: Border.all(color: ColorsValue.primaryColor),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: Styles.white12.copyWith(color: ColorsValue.primaryColor),
              ),
              SvgPicture.asset(
                image,
                width: Dimens.thirty,
                height: Dimens.thirty,
              ),
            ],
          ),
          Dimens.boxHeight10,
          Text(
            description,
            style: Styles.white10.copyWith(
              color: Colors.white.withValues(alpha: 0.5),
            ),
          ),
        ],
      ),
    );
  }
}
