import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:q_savings_app/themes/dark_theme.dart';

class TopHeaderWidgetSavings extends StatelessWidget {
  const TopHeaderWidgetSavings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(),
      body: Container(
        height: 230,
        padding: const EdgeInsets.only(top: 30, left: 20, right: 20),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //TODO:Still should implement custom style for this
                Text(
                  'Savings',
                  style: darkTheme.textTheme.titleMedium,
                ),
                const Icon(Icons.info_outline_rounded),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              '\$1000',
              style: TextStyle(
                fontSize: 21,
                fontFamily: 'AbrilFatFace',
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            SizedBox(
              height: 105,
              child: SvgPicture.asset(
                'images/analytics.svg',
                fit: BoxFit.fitWidth,
              ),
            )
          ],
        ),
      ),
    );
  }
}
