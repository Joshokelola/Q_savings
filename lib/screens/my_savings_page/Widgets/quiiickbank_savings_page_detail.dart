import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'Transaction_widgets/all_transactions.dart';
import 'Transaction_widgets/credit_transaction.dart';
import 'Transaction_widgets/debit_transaction.dart';

class QuiiickSavingsPageDetail extends StatefulWidget {
  const QuiiickSavingsPageDetail({Key? key}) : super(key: key);

  @override
  State<QuiiickSavingsPageDetail> createState() =>
      _QuiiickSavingsPageDetailState();
}

class _QuiiickSavingsPageDetailState extends State<QuiiickSavingsPageDetail> {
  var items = ['All', 'Credits', 'Debits'];
  var _selectedIndex = 0;
  var transactionWidgets = <Widget>[
    const AllTransaction(),
    const CreditTransaction(),
    const DebitTransaction(),
  ];
  int? _value = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding:
                const EdgeInsets.only(top: 10, left: 10, right: 10, bottom: 40),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      icon: const Icon(Icons.arrow_back_rounded),
                      splashRadius: 0.1,
                      color: Colors.purple,
                      iconSize: 35,
                      onPressed: () => Get.back(),
                    ),
                    const Icon(Icons.info_outline_rounded,
                        size: 30, color: Colors.purple,)
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Column(
                  children: [
                    const Text(
                      'My QuiiickBank Balance(10%)',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        fontFamily: 'Worksans',
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    const Text(
                      '\u{20A6}2000',
                      style: TextStyle(
                        color: Colors.purple,
                        fontWeight: FontWeight.w800,
                        fontSize: 35,
                        fontFamily: 'Worksans',
                      ),
                    ),
                    const Text(
                      'Build your saving, weekly or monthly as you wish',
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                        fontFamily: 'Worksans',
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
                          color: const Color.fromARGB(255, 206, 203, 203),
                          child: Padding(
                            padding: const EdgeInsets.only(top: 6, left: 7),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  'Autosave Deposit',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.purple,
                                    fontFamily: 'Worksans',
                                  ),
                                ),
                                Text(
                                  '\u{20A6}100 manual',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
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
                          color: const Color.fromARGB(255, 206, 203, 203),
                          child: Padding(
                            padding: const EdgeInsets.only(top: 6, right: 8),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: const [
                                Text(
                                  'Next Withdrawal',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.purple,
                                    fontFamily: 'Worksans',
                                  ),
                                ),
                                Text(
                                  '30th Jun 2022',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
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
                      height: 20,
                    ),
                    Container(
                      height: 50,
                      decoration: const BoxDecoration(
                        color: Colors.purple,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10),
                            bottomRight: Radius.circular(10)),
                      ),
                      width: double.infinity,
                      child: const Center(
                        child: Text(
                          'QUICK SAVE',
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontFamily: 'Worksans',
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 50,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        border: Border.all(
                          style: BorderStyle.solid,
                          color: Colors.purple,
                          width: 1,
                        ),
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10),
                          bottomRight: Radius.circular(10),
                        ),
                      ),
                      child: const Center(
                        child: Text(
                          'TURN ON AUTOSAVE',
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                              fontFamily: 'Worksans',
                              color: Colors.purple),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 6,
                    ),
                    const Text(
                      'Your Autosave is off',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Worksans',
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        Container(
                          decoration: const BoxDecoration(
                            color: Colors.purpleAccent,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10),
                                bottomRight: Radius.circular(10)),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.all(13.0),
                            child: Icon(Icons.percent_rounded),
                          ),
                        ),
                        const Text(
                          'Interests',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                            fontFamily: 'Worksans',
                          ),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          decoration: const BoxDecoration(
                            color: Colors.purpleAccent,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10),
                                bottomRight: Radius.circular(10)),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.all(13.0),
                            child: Icon(Icons.balance_outlined),
                          ),
                        ),
                        const Text(
                          'Withdraw',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                            fontFamily: 'Worksans',
                          ),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          decoration: const BoxDecoration(
                            color: Colors.purpleAccent,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10),
                                bottomRight: Radius.circular(10)),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.all(13.0),
                            child: Icon(Icons.settings),
                          ),
                        ),
                        const Text(
                          'Settings',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                            fontFamily: 'Worksans',
                          ),
                        )
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 50,
                ),
                Container(
                  height: 350,
                  padding: const EdgeInsets.only(left: 6, right: 2),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('My Transactions'),
                      const SizedBox(
                        height: 6,
                      ),
                      Wrap(
                        children: List<Widget>.generate(
                          3,
                          (int index) {
                            return ChoiceChip(
                              selectedColor:
                                  const Color.fromARGB(255, 237, 209, 241),
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
                      Expanded(
                        child: Container(
                          child: transactionWidgets.elementAt(_selectedIndex),
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Container(
                  height: 50,
                  decoration: BoxDecoration(
                    border: Border.all(
                      style: BorderStyle.solid,
                      color: Colors.purple,
                      width: 1,
                    ),
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10),
                      bottomRight: Radius.circular(10),
                    ),
                  ),
                  child: const Center(
                    child: Text(
                      'VIEW MORE',
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.purple,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Worksans',
                      ),
                    ),
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
