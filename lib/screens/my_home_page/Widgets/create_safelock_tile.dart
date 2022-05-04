import 'package:flutter/material.dart';
import 'package:q_savings_app/themes/dark_theme.dart';

class CreateSafelockTile extends StatelessWidget {
  const CreateSafelockTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
          left: 20,
          right: 20,
          bottom:
              30), //TODO:Check this jus =t in case of spacing issues between widgets
      child: Container(
        padding: const EdgeInsets.only(top: 10, bottom: 10, left: 10),
        decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10),
              topRight: Radius.circular(10),
              bottomRight: Radius.circular(10),
            ),
            color: Colors.black38),
        child: Row(
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Icon(Icons.lock_rounded),
            const SizedBox(
              width: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Create a Safelock',
                  style: darkTheme.textTheme.labelMedium,
                ),
                Flexible(
                  fit: FlexFit.tight,
                  child: Text(
                    "Avoid Spending temptations. Tap to create",
                    // overflow: TextOverflow.visible,
                    style: darkTheme.textTheme.labelSmall,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
