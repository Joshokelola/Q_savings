import 'package:flutter/material.dart';

class DebitTransaction extends StatelessWidget {
  const DebitTransaction({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Row(
          children: [
            Container(
              height: 20,
              width: 20,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.red,
              ),
              child: Container(),
            ),
            const SizedBox(
              width: 15,
            ),
            SizedBox(
              width: 250,
              child: Wrap(
                children: const [
                  Text(
                    'Funds Locked away using SafeLock. To be returned 21/May/2022. Safelock ID: 210420221456',
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      fontFamily: 'Worksans',
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              width: 20,
            ),
            const Expanded(
              child: Text(
                '\u{20A6}-20000',
                style: TextStyle(
                  color: Colors.red,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  fontFamily: 'Worksans',
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
