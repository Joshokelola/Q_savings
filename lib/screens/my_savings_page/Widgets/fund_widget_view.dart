import 'package:flutter/material.dart';

class FundWidgetView extends StatelessWidget {
  const FundWidgetView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 160,
      padding: const EdgeInsets.only(top: 10),
      width: double.infinity,
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 192, 187, 187),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Column(
        children: [
          const Text(
            'Fund your flex',
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: Colors.orange,
              fontFamily: 'Worksans',
            ),
          ),
          const Text(
            'Bank: QUIIICK BANK',
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w600,
              color: Colors.white,
              fontFamily: 'Worksans',
            ),
          ),
          const SizedBox(
            height: 7,
          ),
          Container(
            width: 200,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(
                    Icons.copy_outlined,
                    size: 20,
                  ),
                  Text(
                    '2344678990',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                      color: Colors.grey,
                      fontFamily: 'Worksans',
                    ),
                  )
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          const Text(
            'This works like a regular bank account number. Transfer from any source to 2344678990. Select QUIIICK BANK as the destination bank. Funds will be credited to your Flex Account instantly.',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w600,
              color: Colors.white,
              fontFamily: 'Worksans',
            ),
          )
        ],
      ),
    );
  }
}
