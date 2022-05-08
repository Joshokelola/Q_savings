import 'package:flutter/material.dart';

class CreateSafelock extends StatelessWidget {
  const CreateSafelock({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding:
              const EdgeInsets.only(left: 20, right: 20, top: 15, bottom: 15),
          child: Column(
            children: [
              const Text(
                'How long do you want to lock funds?',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 11, 87, 14),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'Select a duration that you want to lock your funds & earn upfront interest up to 35.6%',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              CustomContainer(
                height: 90.0,
                interest: 'at ~6% per annum',
                numberOfDays: '10-30 days',
                itemSpacing: 15,
                description:
                    'This option is for those who want to lock away funds short-term to avoid spending temptations.',
              ),
              const SizedBox(
                height: 10,
              ),
              CustomContainer(
                height: 50,
                numberOfDays: '31-60 days',
                interest: 'at 7% per annum',
              ),
              const SizedBox(
                height: 10,
              ),
              CustomContainer(
                height: 50,
                numberOfDays: '61-90 days',
                interest: 'at 9% per annum',
              ),
              const SizedBox(
                height: 10,
              ),
              CustomContainer(
                height: 50,
                numberOfDays: '91-365 days',
                interest: 'at 15% per annum',
              ),
              const SizedBox(
                height: 10,
              ),
              CustomContainer(
                height: 50,
                numberOfDays: '1-2 years',
                interest: 'at 20% per annum',
              ),
              const SizedBox(
                height: 10,
              ),
              CustomContainer(
                height: 50,
                numberOfDays: 'over 2 years',
                interest: 'at 20% per annum',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomContainer extends StatelessWidget {
  double height;
  String numberOfDays;
  String interest;
  String? description;
  double? itemSpacing;
  CustomContainer({
    Key? key,
    required this.height,
    required this.numberOfDays,
    required this.interest,
    this.description,
    this.itemSpacing,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
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
      child: InkWell(
        onTap: () => InkSplash.splashFactory,
        child: Container(
          padding: const EdgeInsets.only(top: 6, left: 10, right: 10),
          child: Column(
            children: [
              SizedBox(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      numberOfDays,
                      style: const TextStyle(
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      interest,
                      style: const TextStyle(
                        fontWeight: FontWeight.w600,
                        color: Color.fromARGB(255, 27, 143, 31),
                      ),
                    ),
                    // SizedBox(
                    //   height: 15,
                    // ),
                  ],
                ),
              ),
              SizedBox(
                height: itemSpacing ?? 0,
              ),
              Text(
                description ?? '',
                style: const TextStyle(
                  fontWeight: FontWeight.w500,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
