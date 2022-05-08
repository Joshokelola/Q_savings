import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:q_savings_app/screens/my_savings_page/Widgets/top_header_flex_widget.dart';

import 'Transaction_widgets/all_transactions.dart';
import 'Transaction_widgets/credit_transaction.dart';
import 'Transaction_widgets/debit_transaction.dart';
import 'fund_widget_view.dart';
import 'listed_container_buttons.dart';
import 'new_label_widget.dart';

class FlexOverviewPage extends StatefulWidget {
  const FlexOverviewPage({Key? key}) : super(key: key);

  @override
  State<FlexOverviewPage> createState() => _FlexOverviewPageState();
}

class _FlexOverviewPageState extends State<FlexOverviewPage> {
  int? _value = 1;
  var items = ['All', 'Credits', 'Debits'];
  var _selectedIndex = 0;
  var transactionWidgets = <Widget>[
    const AllTransaction(),
    const CreditTransaction(),
    const DebitTransaction(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding:
                const EdgeInsets.only(top: 10, left: 10, right: 10, bottom: 40),
            // color: Colors.orange,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      icon: const Icon(Icons.arrow_back_rounded),
                      splashRadius: 0.1,
                      color: Colors.orange,
                      iconSize: 35,
                      onPressed: () => Get.back(),
                    ),
                    const Icon(
                      Icons.info_outline_rounded,
                      size: 30,
                      color: Colors.orange,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                const TopHeaderFlexWidget(),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  width: 500,
                  padding: const EdgeInsets.only(left: 30, right: 30),
                  child: Wrap(
                    children: const [
                      Center(
                        child: Text(
                          'This is a cash account for you to keep funds for emergencies. Receive funds, transfer & withdraw for free',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 14,
                            fontFamily: 'Worksans',
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 50,
                      width: 195,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: const Color.fromARGB(255, 206, 203, 203),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 6, left: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              'Interest in 127 days',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: Colors.orange,
                                fontFamily: 'Worksans',
                              ),
                            ),
                            Text(
                              '\u{20A6}50.55 at (8% p.a)',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: Colors.white,
                                fontFamily: 'Worksans',
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 7,
                    ),
                    Container(
                      height: 50,
                      width: 200,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 206, 203, 203),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 6, right: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: const [
                            Text(
                              'Withdrawals',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: Colors.orange,
                                fontFamily: 'Worksans',
                              ),
                            ),
                            Text(
                              '1 this month',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: Colors.white,
                                fontFamily: 'Worksans',
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 25,
                ),
                const FundWidgetView(),
                const SizedBox(
                  height: 30,
                ),
                const NewLabelWidget(),
                const SizedBox(
                  height: 15,
                ),
                const ListedContainerButtons(),
                const SizedBox(
                  height: 15,
                ),
                Wrap(
                  children: List<Widget>.generate(
                    3,
                    (int index) {
                      return ChoiceChip(
                        selectedColor: const Color.fromARGB(255, 252, 219, 170),
                        shape: const RoundedRectangleBorder(),
                        label: Padding(
                          padding: const EdgeInsets.only(
                              top: 7, bottom: 7, left: 31, right: 42),
                          child: Text(items[index]),
                        ),
                        selected: _value == index,
                        onSelected: (bool selected) {
                          setState(
                            () {
                              _value = selected ? index : null;
                              _selectedIndex = index;
                            },
                          );
                        },
                      );
                    },
                  ).toList(),
                ),
                const SizedBox(
                  height: 15,
                ),
                SizedBox(
                  height: 400,
                  child: Container(
                    child: transactionWidgets.elementAt(_selectedIndex),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
