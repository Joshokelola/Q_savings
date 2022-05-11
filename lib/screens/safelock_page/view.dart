import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:q_savings_app/screens/safelock_page/Widgets/create_safelock_bottom_view.dart';
import 'package:q_savings_app/screens/safelock_page/Widgets/safelock_definition_page.dart';
import 'package:q_savings_app/screens/safelock_page/Widgets/view_paid_safelock.dart';

class SafeLockPage extends StatelessWidget {
  const SafeLockPage({Key? key}) : super(key: key);

  void openBottomSheet() {
    Get.bottomSheet(
      const CreateSafelock(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: const Color.fromARGB(31, 180, 176, 176),
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(8.0),
        child: FloatingActionButton(
          onPressed: openBottomSheet,
          child: const Icon(Icons.add),
          backgroundColor: const Color.fromARGB(255, 6, 73, 8),
        ),
      ),
      body: Container(
        child: SafeArea(
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
                  height: 150,
                ),
                Column(
                  children: [
                    Center(
                      child: SizedBox(
                        height: 200,
                        width: 200,
                        //TODO: SHOULD PROBABLY EDIT THIS IMAGE TO CONFORM WITHE PAGE'S GREEN THEME
                        child: SvgPicture.asset('images/vault.svg'),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      'Create A Safelock',
                      style: TextStyle(
                        color: Colors.green,
                        fontWeight: FontWeight.w800,
                        fontSize: 35,
                        fontFamily: 'Worksans',
                      ),
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    const Text(
                      'You have no safelock setup, let\'s get you started.',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                        fontSize: 14,
                        fontFamily: 'Worksans',
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    GestureDetector(
                      onTap: openBottomSheet,
                      child: Container(
                        height: 50,
                        decoration: const BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(10),
                              bottomRight: Radius.circular(10)),
                        ),
                        width: double.infinity,
                        child: const Center(
                          child: Text(
                            'CREATE A SAFELOCK',
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontFamily: 'Worksans',
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    GestureDetector(
                      onTap: () => Get.to(
                        () => const ViewSafelock(),
                      ),
                      child: Container(
                        height: 50,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          border: Border.all(
                            style: BorderStyle.solid,
                            color: Colors.green,
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
                            'VIEW PAID SAFELOCKS',
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                              fontFamily: 'Worksans',
                              color: Colors.green,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    GestureDetector(
                      onTap: () =>
                          Get.to(() => const SafeLockDefinitionScreen()),
                      child: InkWell(
                        child: Container(
                          height: 50,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            border: Border.all(
                              style: BorderStyle.solid,
                              color: Colors.green,
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
                              'WHAT IS A SAFELOCK?',
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w600,
                                fontFamily: 'Worksans',
                                color: Colors.green,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
