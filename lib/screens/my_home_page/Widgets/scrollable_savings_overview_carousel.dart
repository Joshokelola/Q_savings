import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:emojis/emojis.dart';
import 'package:flutter/material.dart';
import 'package:q_savings_app/models/quiiick_savings_model.dart';
import 'package:q_savings_app/themes/dark_theme.dart';

class SavingsOverview extends StatelessWidget {
  const SavingsOverview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final QuiiickSavingModel Qmodel;
    var colors = <Color>[
      Colors.purple,
      Colors.blueAccent,
      Colors.black26,
      Colors.redAccent,
      Colors.orangeAccent
    ];
    var items = [
      'Total Savings',
      'Total Investments',
      'Flex Dollar',
      'Flex Naira',
      'Abeg App'
    ];

    var totalAmount = [
      '\$1000',
      '\$300',
      '\$400',
      '\$20',
      '\$1110',
    ];

    var emoticons = <String>[
      Emojis.shield,
      Emojis.chartIncreasing,
      Emojis.heavyDollarSign,
      Emojis.filmFrames,
      Emojis.atmSign
    ];
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 30, right: 30),
        child: Container(
          height: 100,
          child: CarouselSlider.builder(
            itemCount: qmodel.length,
            itemBuilder: (BuildContext context, int index, int index1) {
              return Builder(
                builder: (BuildContext context) {
                  return Column(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width,
                        margin: EdgeInsets.symmetric(horizontal: 5.0),
                        decoration: BoxDecoration(
                          color: colors[index],
                          borderRadius: const BorderRadius.only(
                            topRight: Radius.circular(20),
                            topLeft: Radius.circular(20),
                            bottomRight: Radius.circular(20),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Row(
                            children: [
                              Text(emoticons[index]),
                              SizedBox(
                                width: 10,
                              ),
                              Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      items[index],
                                      style: darkTheme.textTheme.bodyMedium,
                                    ),
                                    SizedBox(
                                      height: 8,
                                    ),
                                    Text(
                                      totalAmount[index],
                                      style: darkTheme.textTheme.labelSmall,
                                    )
                                  ]),
                            ],
                          ),
                        ),
                      ),
                      DotsIndicator(
                        dotsCount: items.length,
                        position: index + 0.0,
                      ),
                    ],
                  );
                },
              );
            },
            options: CarouselOptions(
                height: 120,
                initialPage: 0,
                scrollDirection: Axis.horizontal,
                autoPlay: true,
                autoPlayAnimationDuration: Duration(milliseconds: 500)),
          ),
        ),
      ),
    );
  }
}
