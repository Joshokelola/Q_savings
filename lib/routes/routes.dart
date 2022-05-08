import 'package:get/get.dart';
import 'package:q_savings_app/screens/my_home_page/view.dart';
import 'package:q_savings_app/screens/my_savings_page/view.dart';

class RoutesClass {
  static String home = '/';
  static String getHomeRoute() => home;

  static String mySavingsPage = '/mySavingsPage';
  static String mySavingPageRoute() => mySavingsPage;


  List<GetPage> routes = [
    GetPage(
      page: () => const MyHomePage(),
      name: home,
    ),
        GetPage(
      page: () => const MySavingsPage(),
      name: mySavingsPage,
    ),
  ];
}
