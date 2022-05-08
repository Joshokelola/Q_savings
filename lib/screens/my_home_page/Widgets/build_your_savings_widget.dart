import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:q_savings_app/themes/dark_theme.dart';

class BuildSaving extends StatelessWidget {
  const BuildSaving({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'BUILD YOUR SAVINGS',
            style: darkTheme.textTheme.titleSmall,
          ),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            width: 300,
            child: SvgPicture.asset(
              'images/analytics.svg',
              height: 150,
              fit: BoxFit.fitWidth,
            ),
          )
        ],
      ),
    );
  }
}
