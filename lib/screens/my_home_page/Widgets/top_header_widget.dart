import 'package:emojis/emojis.dart';
import 'package:flutter/material.dart';

class TopHeaderWidget extends StatelessWidget {
  const TopHeaderWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(left: 30, right: 30, top: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ///This Row contains the friendly user message
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Hi Joshua,',
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                const Icon(Icons.emoji_emotions),
              ],
            ),
            const Text(
                'You should wash your hands ${Emojis.clappingHandsMediumLightSkinTone}')
          ],
        ),
      ),
    );
  }
}
