import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intro_slider/intro_slider.dart';
import 'package:intro_slider/slide_object.dart';

class SafeLockDefinitionScreen extends StatefulWidget {
  const SafeLockDefinitionScreen({Key? key}) : super(key: key);

  @override
  _SafeLockDefinitionScreenState createState() =>
      _SafeLockDefinitionScreenState();
}

class _SafeLockDefinitionScreenState extends State<SafeLockDefinitionScreen> {
  List<Slide> slides = [];

  @override
  void initState() {
    super.initState();

    slides.add(
      Slide(
        title: "What is a Safelock?",
        maxLineTitle: 10,
        description:
            "Safelock allows you to set money aside for a fixed period of time without having access to it until maturity, It's like having your custom fixed deposit",
        backgroundColor: const Color(0xfff5a623),
      ),
    );
    slides.add(
      Slide(
        title: "You're in control!",
        description:
            "Set the desired duration of times to lock funds. You can lock for as little as 10 days or as much as 1000 days",
        backgroundColor: const Color(0xff203152),
      ),
    );
    slides.add(
      Slide(
        title: "Earn interest upfront!",
        description: "Up to 13% interest per annum, paid upfront",
        backgroundColor: const Color(0xff9932CC),
      ),
    );
  }

  void onDonePress() {
    // Do what you want
    print("End of slides");
    Get.back();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: IntroSlider(
        showDotIndicator: true,
        slides: slides,
        onDonePress: onDonePress,
      ),
    );
  }
}
