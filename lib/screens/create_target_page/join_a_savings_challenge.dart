import 'package:flutter/material.dart';
import 'package:get/get.dart';

class JoinSavingsChallenge extends StatefulWidget {
  const JoinSavingsChallenge({Key? key}) : super(key: key);

  @override
  State<JoinSavingsChallenge> createState() => _JoinSavingsChallengeState();
}

class _JoinSavingsChallengeState extends State<JoinSavingsChallenge> {
  var items = [
    'My Targets',
    'Explore',
    'Completed',
  ];
  var targetWidgets = [
    
  ];
  int? _value = 1;
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.only(
            top: 30,
            left: 20,
            right: 20,
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    icon: const Icon(Icons.arrow_back_rounded),
                    splashRadius: 0.1,
                    color: Colors.red,
                    iconSize: 35,
                    onPressed: () => Get.back(),
                  ),
                  const Icon(
                    Icons.info_outline_rounded,
                    size: 30,
                    color: Colors.red,
                  ),
                ],
              ),
              const SizedBox(
                height: 12,
              ),
              const Text(
                'Target Savings(9%)',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(
                height: 7,
              ),
              const Text(
                '\u{20A6}0.00',
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.w600,
                  color: Colors.red,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'Save with discipline towards a specific goal/target',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Wrap(
                children: List<Widget>.generate(
                  3,
                  (int index) {
                    return ChoiceChip(
                      backgroundColor: Colors.transparent,
                      side: const BorderSide(
                        width: 1,
                        color: Colors.black12,
                      ),
                      elevation: 0,
                      pressElevation: 0,
                      selectedColor: Colors.redAccent,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                      label: Padding(
                        padding: const EdgeInsets.only(
                          top: 7,
                          bottom: 7,
                          left: 20,
                          right: 15,
                        ),
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
            ],
          ),
        ),
      ),
    );
  }
}
