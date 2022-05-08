import 'package:flutter/material.dart';

class ListedContainerButtons extends StatelessWidget {
  const ListedContainerButtons({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Column(
          children: [
            Container(
              decoration: const BoxDecoration(
                color: Colors.orange,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                    bottomRight: Radius.circular(10)),
              ),
              child: const Padding(
                padding: EdgeInsets.all(13.0),
                child: Icon(Icons.label),
              ),
            ),
            const Text(
              'Interests',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w500,
                fontFamily: 'Worksans',
              ),
            )
          ],
        ),
        Column(
          children: [
            Container(
              decoration: const BoxDecoration(
                color: Colors.orange,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                    bottomRight: Radius.circular(10)),
              ),
              child: const Padding(
                padding: EdgeInsets.all(13.0),
                child: Icon(Icons.redo_outlined),
              ),
            ),
            const Text(
              'Transfer',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w500,
                fontFamily: 'Worksans',
              ),
            )
          ],
        ),
        Column(
          children: [
            Container(
              decoration: const BoxDecoration(
                color: Colors.orange,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                    bottomRight: Radius.circular(10)),
              ),
              child: const Padding(
                padding: EdgeInsets.all(13.0),
                child: Icon(Icons.savings_outlined),
              ),
            ),
            const Text(
              'Withdraw',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w500,
                fontFamily: 'Worksans',
              ),
            )
          ],
        ),
        Column(
          children: [
            Container(
              decoration: const BoxDecoration(
                color: Colors.orange,
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
                fontWeight: FontWeight.w500,
                fontFamily: 'Worksans',
              ),
            )
          ],
        ),
      ],
    );
  }
}
