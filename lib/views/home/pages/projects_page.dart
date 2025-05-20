import 'package:flutter/material.dart';
import 'package:portfolio/res/res.dart';

class ProjectsPage extends StatelessWidget {
  const ProjectsPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'PROJECTS ACCOMPLISHED',
            style: Styles.white14.copyWith(
              color: ColorsValue.primaryColor,
              fontWeight: FontWeight.bold,
            ),
          ),
          Dimens.boxHeight20,
        ],
      ),
    );
  }
}
