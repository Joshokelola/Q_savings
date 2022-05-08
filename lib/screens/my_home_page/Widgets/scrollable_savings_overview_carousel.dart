import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:emojis/emojis.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:q_savings_app/models/quiiick_savings_model.dart';
import 'package:q_savings_app/screens/my_savings_page/Widgets/flex_overview_page.dart';
import 'package:q_savings_app/screens/my_savings_page/view.dart';
import 'package:q_savings_app/screens/search_page/search_page.dart';
import 'package:q_savings_app/screens/user_profile_page/user_page.dart';
import 'package:q_savings_app/themes/dark_theme.dart';

import '../../abeg_app_page/abeg_app_page.dart';
import '../logic.dart';

class SavingsOverview extends StatelessWidget {
  const SavingsOverview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final QuiiickSavingModel Qmodel;
    CarouselController? carouselController;
    final controller = Get.find<MyHomePageLogic>();
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
      'Quiiick Dollar',
      'Flex Naira',
      'Abeg App'
    ];

    var totalAmount = [
      '\u{20A6}100000',
      '\u{20a6}20000',
      '\$4000',
      '\u{20a6}20000',
      '\u{20a6}20000',
    ];

    var emoticons = <String>[
      Emojis.shield,
      Emojis.chartIncreasing,
      Emojis.heavyDollarSign,
      Emojis.filmFrames,
      Emojis.atmSign
    ];

    var actions = <Widget>[
      const MySavingsPage(),
      const SearchPage(),
      const UserProfilePage(), //TODO: REMOVE THIS LINE OF CODE
      const FlexOverviewPage(),
      const AbegAppPage(),
    ];

    var pageTransition = <Transition>[
      Transition.rightToLeft,
      Transition.leftToRight,
      Transition.rightToLeft,
      Transition.leftToRight,
      Transition.fadeIn
    ];
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 5, right: 5),
            child: SizedBox(
              height: 100,
              child: CarouselSlider.builder(
                itemCount: qmodel.length,
                itemBuilder: (BuildContext context, int index, int index1) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Column(
                        children: [
                          GestureDetector(
                            onTap: () => Get.to(
                              () => actions[index1],
                              transition: pageTransition[index1],
                            ),
                            child: Container(
                              height: 100,
                              width: MediaQuery.of(context).size.width,
                              margin:
                                  const EdgeInsets.symmetric(horizontal: 5.0),
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
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          items[index],
                                          style: darkTheme.textTheme.bodyMedium,
                                        ),
                                        const SizedBox(
                                          height: 8,
                                        ),
                                        Text(
                                          totalAmount[index],
                                          style: darkTheme.textTheme.labelSmall,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      );
                    },
                  );
                },
                options: CarouselOptions(
                  onPageChanged: ((index, reason) {
                    controller.currentIndex.value = index;
                  }),
                  enableInfiniteScroll: false,
                  height: 150,
                  viewportFraction: 0.95,
                  initialPage: 0,
                  enlargeCenterPage: true,
                  enlargeStrategy: CenterPageEnlargeStrategy.height,
                  scrollDirection: Axis.horizontal,
                  autoPlayAnimationDuration: const Duration(milliseconds: 500),
                ),
              ),
            ),
          ),
          Obx(
            () => DotsIndicator(
              decorator: DotsDecorator(
                  activeColor: colors[controller.currentIndex.value],
                  color: const Color.fromARGB(255, 226, 217, 217)),
              dotsCount: items.length,
              position: controller.currentIndex.value.toDouble(),
            ),
          ),
        ],
      ),
    );
  }
}
