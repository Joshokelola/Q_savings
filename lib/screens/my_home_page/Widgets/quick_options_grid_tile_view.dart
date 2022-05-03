import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:q_savings_app/themes/dark_theme.dart';

class QuickOptionsGridTileView extends StatelessWidget {
  const QuickOptionsGridTileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30, right: 30),
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          //TODO:ADD DOTS INDICATOR TO CAROUSEL SLIDER
          children: [
            Text(
              'QUIIICK OPTIONS',
              style: darkTheme.textTheme.titleSmall,
            ),
            SizedBox(
              height: 15,
            ),
            SizedBox(
              height: 500,
              child: GridView.count(
                crossAxisCount: 2,
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
                          Text('Quiiick Savings assessment score'),
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
                          Text(
                              'Check out all today\'s rates across all savings features on QuiiickSave'),
                          const SizedBox(height: 40),
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
                          Text(
                              'Free Transfers, withdrawals e.t.c. 10% pa on QuiiickSave'),
                          const SizedBox(height: 40),
                          Text('View Assessment',
                              style: darkTheme.textTheme.labelSmall)
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
                          Text(
                              'Save & grow your wealth in dollars. Up to 7% pa in dollars on QuiiickSave'),
                          const SizedBox(height: 40),
                          Text(
                            'View Assessment',
                            style: darkTheme.textTheme.labelSmall,
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
