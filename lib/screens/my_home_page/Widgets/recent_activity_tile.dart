import 'package:flutter/material.dart';
import 'package:q_savings_app/themes/dark_theme.dart';

class RecentActivitiesTile extends StatelessWidget {
  const RecentActivitiesTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
          left: 20,
          right: 20,
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
          color: Color.fromARGB(255, 236, 231, 231),
        ),
        child: Row(
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Icon(Icons.access_time_rounded),
            const SizedBox(
              width: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'See your recent activities',
                  style: darkTheme.textTheme.labelMedium,
                ),
                const SizedBox(
                  height: 5,
                ),
                const Text(
                  'See your most recent activities on QSavings',
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    fontFamily: 'Worksans',
                    color: Colors.black,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
