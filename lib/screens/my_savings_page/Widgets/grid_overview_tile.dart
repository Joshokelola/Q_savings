import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:q_savings_app/screens/my_savings_page/Widgets/flex_overview_page.dart';
import 'package:q_savings_app/screens/my_savings_page/Widgets/quiiickbank_savings_page_detail.dart';
import 'package:q_savings_app/screens/safelock_page/view.dart';
import 'package:q_savings_app/themes/dark_theme.dart';

class GridTileOverView extends StatelessWidget {
  const GridTileOverView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
        child: Padding(
      padding: EdgeInsets.only(top: 20, left: 15, right: 15),
      child: GridListOverviewSavings(crossAxisCount: 2),
    ));
  }
}

class GridListOverviewSavings extends StatelessWidget {
  final int? crossAxisCount;
  const GridListOverviewSavings({
    Key? key,
    required this.crossAxisCount,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 900,
      child: GridView.count(
        physics: const ScrollPhysics(),
        crossAxisCount: crossAxisCount ?? 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        children: [
          GestureDetector(
            onTap: () => Get.to(
              () => const QuiiickSavingsPageDetail(),
              transition: Transition.zoom,
            ),
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.purple,
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
                      'Quiiickbank',
                      style: darkTheme.textTheme.displayMedium,
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      'Strict savings automatically. Daily, Weekly or monthly',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 57),
                    Text(
                      '\u{20A6}2000',
                      style: darkTheme.textTheme.labelSmall,
                    )
                  ],
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () => Get.to(
              () => const FlexOverviewPage(),
              transition: Transition.rightToLeft,
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
                    const SizedBox(height: 60),
                    Text('\u{20A6}20000', style: darkTheme.textTheme.labelSmall)
                  ],
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () => Get.to(() => const SafeLockPage(),),
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.green,
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
                      'Safelock',
                      style: darkTheme.textTheme.displayMedium,
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      'Lock funds to avoid temptations. Upfront interest up to 20% p.a',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 60),
                    Text(
                      '\u{20A6}0.00',
                      style: darkTheme.textTheme.labelSmall,
                    )
                  ],
                ),
              ),
            ),
          ),
          Container(
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
                    'Quiiick Targets',
                    style: darkTheme.textTheme.displayMedium,
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    'Reach your unique individual savings goal.',
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 75),
                  Text(
                    '\u{20A6}0.00',
                    style: darkTheme.textTheme.labelSmall,
                  )
                ],
              ),
            ),
          ),
          Container(
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
                  const SizedBox(height: 60),
                  Text(
                    '\$4000',
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

            // height: 20,
            child: Padding(
              padding: const EdgeInsets.all(18.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Abeg App',
                    style: darkTheme.textTheme.displayMedium,
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    'Link your Quiiicksave account with your Abeg App easily',
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 60),
                  Text(
                    '\u{20A6}20000',
                    style: darkTheme.textTheme.labelSmall,
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
