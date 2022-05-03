import 'package:flutter/material.dart';
import 'package:q_savings_app/themes/dark_theme.dart';

class RecentActivitiesTile extends StatelessWidget {
  const RecentActivitiesTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
          left: 30,
          right: 30,
          bottom:
              10), //TODO:Check this jus =t in case of spacing issues between widgets
      child: Container(
        padding: const EdgeInsets.only(top: 10, bottom: 10, left: 10),
        decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10),
              topRight: Radius.circular(10),
              bottomRight: Radius.circular(10),
            ),
            color: Colors.black38),
        child: Row(
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(Icons.access_time_rounded),
            SizedBox(
              width: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'See your recent activities',
                  style: darkTheme.textTheme.labelMedium,
                ),
                Text(
                  'See your most recent activities on QSavings',
                  style: darkTheme.textTheme.labelSmall,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
