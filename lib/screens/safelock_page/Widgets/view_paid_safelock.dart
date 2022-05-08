import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ViewSafelock extends StatefulWidget {
  const ViewSafelock({Key? key}) : super(key: key);

  @override
  State<ViewSafelock> createState() => _ViewSafelockState();
}

class _ViewSafelockState extends State<ViewSafelock> {
  var _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    var items = ['Ongoing(0)', 'Paid(4)'];

    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: const EdgeInsets.only(left: 20, right: 20, top: 20),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    icon: const Icon(Icons.arrow_back_outlined),
                    iconSize: 35,
                    onPressed: () => Get.back(),
                    splashRadius: 1,
                    color: const Color.fromARGB(255, 6, 73, 8),
                  ),
                  const Icon(
                    Icons.info_outline,
                    size: 35,
                    color: Color.fromARGB(255, 6, 73, 8),
                  )
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              const Text(
                'Safelock Balance(6% - 13%)',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                  fontSize: 20,
                  fontFamily: 'Worksans',
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              const Text(
                '\u{20A6}0.00',
                style: TextStyle(
                  color: Colors.green,
                  fontWeight: FontWeight.w800,
                  fontSize: 35,
                  fontFamily: 'Worksans',
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'Safelock is a short term investment feature that allows you to earn interest upfront when you lock away a portion of your savings for a fixed period',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                  fontSize: 12,
                  fontFamily: 'Worksans',
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Wrap(
                children: List<Widget>.generate(
                  2,
                  (int index) {
                    return ChoiceChip(
                      backgroundColor: Colors.transparent,
                      side: const BorderSide(
                        width: 0.5,
                        color: Colors.black26,
                      ),
                      selectedColor: Colors.greenAccent,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(3),
                      ),
                      pressElevation: 0,
                      label: Padding(
                        padding: const EdgeInsets.only(
                            top: 7, bottom: 7, left: 31, right: 42),
                        child: Text(items[index]),
                      ),
                      selected: _selectedIndex == index,
                      onSelected: (bool selected) {
                        setState(
                          () {
                            //_selectedIndex= (selected ? index : null)!;
                            _selectedIndex = index;
                          },
                        );
                      },
                    );
                  },
                ).toList(),
              ),
              const SizedBox(
                height: 5,
              ),
              SizedBox(
                child: (_selectedIndex == 0)
                    ? const OngoingSafelockPage()
                    : const PaidSafelock(),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class OngoingSafelockPage extends StatelessWidget {
  const OngoingSafelockPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class PaidSafelock extends StatelessWidget {
  const PaidSafelock({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(shrinkWrap: true, children: [
      SavingsContainer(
        amount: '20,000',
        safelockRemark: 'Savings',
      ),
      const SizedBox(
        height: 5,
      ),
      SavingsContainer(
        amount: '15,000',
        safelockRemark: 'Allowance',
      ),
      const SizedBox(
        height: 5,
      ),
      SavingsContainer(
        amount: '35,000',
        safelockRemark: 'Savings',
      ),
      const SizedBox(
        height: 5,
      ),
      SavingsContainer(
        amount: '5,000',
        safelockRemark: 'Fees',
      ),
    ]);
  }
}

class SavingsContainer extends StatelessWidget {
  String amount;
  String safelockRemark;
  SavingsContainer({
    Key? key,
    required this.amount,
    required this.safelockRemark,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: double.infinity,
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 214, 211, 211),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 10, left: 20),
        child: Row(
          //mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Icon(
              Icons.savings_outlined,
              size: 35,
              color: Color.fromARGB(255, 6, 73, 8),
            ),
            const SizedBox(
              width: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  safelockRemark,
                  style: const TextStyle(
                    fontSize: 18,
                  ),
                ),
                Text(
                  '\u{20A6}$amount',
                  style: const TextStyle(
                    color: Colors.green,
                    fontSize: 18,
                  ),
                ),
              ],
            ),
            Container(
              child: const Icon(
                Icons.arrow_right_rounded,
                size: 35,
                color: Color.fromARGB(255, 6, 73, 8),
              ),
            )
          ],
        ),
      ),
    );
  }
}
