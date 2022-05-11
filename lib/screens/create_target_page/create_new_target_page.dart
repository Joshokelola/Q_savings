import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CreatePersonalTargetPage extends StatelessWidget {
  const CreatePersonalTargetPage({Key? key}) : super(key: key);

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
              Icons.cancel_rounded,
              color: Colors.red,
              size: 35,
            ),
          ),
        ),
      ),
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.only(top: 30, left: 25, right: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Create a personal target or group target',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w700,
                  color: Colors.red,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              const Text(
                'Setup a new savings target and get paid everyday (@9% p.a) to reach your goals faster. Select an option to continue.',
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 14,
                  fontFamily: 'Worksans',
                  color: Colors.black,
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              CustomTargetContainer(
                icon: Icons.person,
                targetTitle: 'Start a personal target',
                targetDescription:
                    'Select if you want to create a personal target',
              ),
              const SizedBox(
                height: 20,
              ),
              CustomTargetContainer(
                icon: Icons.location_city_outlined,
                targetTitle: 'Start a public savings challenge',
                targetDescription:
                    'Use this option to create a public savings challenge for you and your friends',
              ),
              const SizedBox(
                height: 20,
              ),
              CustomTargetContainer(
                icon: Icons.people_alt_rounded,
                targetTitle: 'Start a private group target',
                targetDescription:
                    'Use this option to create a private savings challenge for you and your friends',
              ),
              const SizedBox(
                height: 220,
              ),
              InkWell(
                onTap: () => InkSplash.splashFactory,
                child: GestureDetector(
                  onTap: () => Get.back(),
                  child: Container(
                    height: 50,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      border: Border.all(
                        style: BorderStyle.solid,
                        color: Colors.red,
                        width: 1.5,
                      ),
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10),
                        bottomRight: Radius.circular(10),
                      ),
                    ),
                    child: const Center(
                      child: Text(
                        'CANCEL',
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomTargetContainer extends StatelessWidget {
  String targetTitle;
  String targetDescription;
  IconData icon;
  CustomTargetContainer({
    Key? key,
    required this.targetTitle,
    required this.targetDescription,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 236, 231, 231),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Row(
        children: [
          Icon(
            icon,
            size: 50,
            color: Colors.red,
          ),
          const SizedBox(
            width: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  targetTitle,
                  style: const TextStyle(
                    fontSize: 16,
                    color: Colors.red,
                    fontWeight: FontWeight.w600,
                  ),
                  // textAlign: TextAlign.justify,
                ),
                SizedBox(
                  width: 280,
                  child: Wrap(
                    children: [
                      Text(
                        targetDescription,
                        textAlign: TextAlign.justify,
                        style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
