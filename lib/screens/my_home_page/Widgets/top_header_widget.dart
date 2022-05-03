import 'package:emojis/emojis.dart';
import 'package:flutter/material.dart';
import 'package:q_savings_app/themes/dark_theme.dart';

class TopHeaderWidget extends StatelessWidget {
  const TopHeaderWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      padding: const EdgeInsets.only(left: 30, right: 30, top: 20),
      child: Column(
        // mainAxisSize: MainAxisSize.min,
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
          Text(
            'You should wash your hands ${Emojis.clappingHandsMediumLightSkinTone}',
            style: darkTheme.textTheme.bodyMedium,
          )
        ],
      ),
    );
  }
}
