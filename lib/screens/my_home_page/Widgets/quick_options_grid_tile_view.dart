import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:q_savings_app/screens/my_savings_page/Widgets/flex_overview_page.dart';
import 'package:q_savings_app/screens/user_profile_page/user_page.dart';

import 'package:q_savings_app/themes/dark_theme.dart';

class QuickOptionsGridTileView extends StatelessWidget {
  const QuickOptionsGridTileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'QUIIICK OPTIONS',
            style: darkTheme.textTheme.titleSmall,
          ),
          const SizedBox(
            height: 15,
          ),
          const Flexible(
            child: GridListOverview(
              crossAxisCount: 2,
            ),
          )
        ],
      ),
    );
  }
}

class GridListOverview extends StatelessWidget {
  final int? crossAxisCount;
  const GridListOverview({
    Key? key,
    required this.crossAxisCount,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 500,
      child: GridView.count(
        physics: const ScrollPhysics(),
        crossAxisCount: crossAxisCount ?? 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        children: [
          Container(
            decoration: const BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
                bottomRight: Radius.circular(10),
                bottomLeft: Radius.circular(10),
              ),
            ),

            //height: 20,
            child: Padding(
              padding: const EdgeInsets.all(18.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Savings Score',
                    style: darkTheme.textTheme.displayMedium,
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    'Quiiick Savings assessment score',
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 57),
                  Text(
                    'View Assessment',
                    style: darkTheme.textTheme.labelSmall,
                  )
                ],
              ),
            ),
          ),
          Container(
            decoration: const BoxDecoration(
              color: Colors.deepPurple,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
                bottomRight: Radius.circular(10),
                bottomLeft: Radius.circular(10),
              ),
            ),

            //height: 20,
            child: Padding(
              padding: const EdgeInsets.all(18.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Today\'s rates',
                    style: darkTheme.textTheme.displayMedium,
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    'Check out all today\'s rates across all savings features on QuiiickSave',
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 40),
                  Text(
                    'View Assessment',
                    style: darkTheme.textTheme.labelSmall,
                  )
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () => Get.to(
              () => const FlexOverviewPage(),
              transition: Transition.leftToRight,
            ),
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.orangeAccent,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                  bottomLeft: Radius.circular(10),
                ),
              ),

              // height: 20,
              child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Quiiick Naira',
                      style: darkTheme.textTheme.displayMedium,
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      'Free Transfers, withdrawals e.t.c. 10% pa on QuiiickSave',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 40),
                    Text('View Assessment',
                        style: darkTheme.textTheme.labelSmall)
                  ],
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () => Get.to(
              () => const UserProfilePage(),
              transition: Transition.rightToLeft,
            ), //TODO:REMOVE THIS LINE OF CODE
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.black38,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                  bottomLeft: Radius.circular(10),
                ),
              ),

              // height: 20,
              child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Quiiick Dollar',
                      style: darkTheme.textTheme.displayMedium,
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      'Save & grow your wealth in dollars. Up to 7% pa in dollars on QuiiickSave',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 40),
                    Text(
                      'View Assessment',
                      style: darkTheme.textTheme.labelSmall,
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
