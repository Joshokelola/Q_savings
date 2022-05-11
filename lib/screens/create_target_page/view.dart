import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:q_savings_app/screens/create_target_page/create_new_target_page.dart';
import 'package:q_savings_app/screens/create_target_page/join_a_savings_challenge.dart';

class CreateTargetPage extends StatelessWidget {
  const CreateTargetPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.all(12.0),
          child: IconButton(
            onPressed: () => Get.back(),
            icon: const Icon(
              Icons.arrow_back_outlined,
              color: Colors.red,
              size: 35,
            ),
          ),
        ),
      ),
      body: SafeArea(
        child: Center(
          child: Container(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: Column(
              children: [
                SizedBox(
                  height: Get.height / 6,
                ),
                Center(
                  child: SizedBox(
                    height: 200,
                    width: 200,
                    //TODO: SHOULD PROBABLY EDIT THIS IMAGE TO CONFORM WITHE PAGE'S GREEN THEME
                    child: SvgPicture.asset('images/goals.svg'),
                  ),
                ),
                const Text(
                  'Create a Target!',
                  style: TextStyle(
                    fontSize: 33,
                    fontWeight: FontWeight.w700,
                    color: Colors.red,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  'Save with discipline towards a specific goal or target. Earn interests every day into your Flex wallet. Let\'s help you get you started',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                GestureDetector(
                  onTap: () => Get.to(
                    () => const CreatePersonalTargetPage(),
                    transition: Transition.downToUp,
                    fullscreenDialog: true,
                  ),
                  child: Container(
                    height: 50,
                    decoration: const BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10),
                          bottomRight: Radius.circular(10)),
                    ),
                    width: double.infinity,
                    child: const Center(
                      child: Text(
                        'CREATE A TARGET',
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
                    () => const JoinSavingsChallenge(),
                  ),
                  child: Container(
                    height: 50,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      border: Border.all(
                        style: BorderStyle.solid,
                        color: Colors.red,
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
                        'JOIN A SAVINGS CHALLENGE',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Worksans',
                          color: Colors.red,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
