import 'package:get/get.dart';
import 'package:q_savings_app/screens/my_home_page/view.dart';

class RoutesClass {
  static String home = '/';
  static String getHomeRoute() => home;

  List<GetPage> routes = [
    GetPage(
      page: () => const MyHomePage(),
      name: home,
    ),
  ];
}
