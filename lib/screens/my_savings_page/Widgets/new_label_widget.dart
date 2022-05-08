import 'package:emojis/emojis.dart';
import 'package:flutter/material.dart';

class NewLabelWidget extends StatelessWidget {
  const NewLabelWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 160,
      padding: const EdgeInsets.only(top: 10),
      width: double.infinity,
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 252, 219, 170),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Column(
        children: [
          const Text(
            'INTRODUCING: LABELS ${Emojis.partyingFace}',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
              color: Colors.black,
              fontFamily: 'Worksans',
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'Labels lets you organise your emergency funds based on your needs',
              // textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: Colors.white,
                fontFamily: 'Worksans',
              ),
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.only(top: 10, left: 25, right: 25),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.deepOrange,
                borderRadius: BorderRadius.circular(5),
              ),
              child: const Center(
                child: Padding(
                  padding: EdgeInsets.all(15.0),
                  child: Text(
                    'LEARN MORE',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                      fontFamily: 'Worksans',
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
