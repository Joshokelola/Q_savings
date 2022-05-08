import 'package:flutter/material.dart';

class TopHeaderFlexWidget extends StatelessWidget {
  const TopHeaderFlexWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          'Flex Account(8%)',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 16,
            fontFamily: 'Worksans',
          ),
        ),
        const SizedBox(
          height: 6,
        ),
        const Text(
          '\u{20A6}20,000.00',
          style: TextStyle(
            color: Colors.orange,
            fontWeight: FontWeight.w800,
            fontSize: 35,
            fontFamily: 'Worksans',
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                border: Border.all(
                  width: 0.5,
                  color: Colors.black,
                ),
                borderRadius: BorderRadius.circular(4),
              ),
              child: const Padding(
                padding: EdgeInsets.all(5.0),
                child: Text(
                  'Available Balance',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 14,
                    fontFamily: 'Worksans',
                  ),
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                border: Border.all(
                  width: 0.5,
                  color: Colors.black,
                ),
                borderRadius: BorderRadius.circular(4),
              ),
              child: const Padding(
                padding: EdgeInsets.all(5.0),
                child: Text(
                  '\u{20A6}20,000.00',
                  style: TextStyle(
                    color: Colors.orange,
                    fontWeight: FontWeight.w800,
                    fontSize: 14,
                    fontFamily: 'Worksans',
                  ),
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}



