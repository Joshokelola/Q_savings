import 'package:auto_size_text_pk/auto_size_text_pk.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:q_savings_app/screens/my_home_page/Widgets/build_your_savings_widget.dart';
import 'package:q_savings_app/screens/my_home_page/Widgets/create_safelock_tile.dart';
import 'package:q_savings_app/screens/my_home_page/Widgets/quick_options_grid_tile_view.dart';
import 'package:q_savings_app/screens/my_home_page/Widgets/recent_activity_tile.dart';
import 'package:q_savings_app/screens/my_home_page/Widgets/scrollable_savings_overview_carousel.dart';
import 'package:q_savings_app/screens/my_home_page/Widgets/todo_list_widget.dart';
import 'package:q_savings_app/screens/my_home_page/Widgets/top_header_widget.dart';
import 'package:q_savings_app/screens/my_savings_page/logic.dart';
import 'package:q_savings_app/screens/my_savings_page/view.dart';
import 'package:q_savings_app/screens/search_page/search_page.dart';
import 'package:q_savings_app/screens/user_profile_page/user_page.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

import 'logic.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final autoSizeGroup = AutoSizeGroup();
  var _bottomNavIndex = 0;
  var _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    final logic = Get.find<MyHomePageLogic>();
    Get.lazyPut(() => MySavingsPageLogic());

    final state = Get.find<MyHomePageLogic>().state;
    final iconsList = <IconData>[
      Icons.menu_rounded,
      Icons.account_balance_outlined,
      Icons.airplanemode_active,
      Icons.directions_outlined,
      Icons.person_outlined
    ];

    final differentScreen = <Widget>[
      const MainSingleScrollView(),
      const MySavingsPage(),
      const SearchPage(),
      const UserProfilePage()
    ];

    //TODO:Wrap this widget with a singlechildscrollview
    return Scaffold(
      body: SafeArea(
        child: differentScreen.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: SalomonBottomBar(
        itemPadding: const EdgeInsets.symmetric(
          horizontal: 23,
          vertical: 16,
        ),
        currentIndex: _bottomNavIndex,
        onTap: (i) {
          setState(() {
            _bottomNavIndex = i;
            _selectedIndex = i;
          });
        },
        margin: const EdgeInsets.only(left: 2, bottom: 5),
        curve: Curves.easeOutCirc,
        items: [
          /// Home
          SalomonBottomBarItem(
            icon: const Icon(Icons.home),
            title: const Text("Home"),
            selectedColor: Colors.purple,
            unselectedColor: Colors.black38,
          ),

          /// Likes
          SalomonBottomBarItem(
            icon: const Icon(Icons.account_balance_outlined),
            title: const Text("Savings"),
            selectedColor: Colors.red,
            unselectedColor: Colors.black38,
          ),

          /// Search
          SalomonBottomBarItem(
            icon: const Icon(Icons.search),
            title: const Text("Search"),
            selectedColor: Colors.orange,
            unselectedColor: Colors.black38,
          ),

          /// Profile
          SalomonBottomBarItem(
            icon: const Icon(Icons.person),
            title: const Text("Profile"),
            selectedColor: Colors.blueAccent,
            unselectedColor: Colors.black38,
          ),
        ],
      ),
    );
  }
}

class MainSingleScrollView extends StatelessWidget {
  const MainSingleScrollView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const ScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: const [
          SizedBox(
              height: 100,
              child:
                  TopHeaderWidget()), //TODO: Remember to check out this height value just in case of layout adjustment stuff,
          SizedBox(
              height: 150,
              child:
                  SavingsOverview()), //TODO: Remember to check out this height value just in case of layout adjustment stuff,
          SizedBox(
            height: 220,
            child:
                BuildSaving(), //TODO: Remember to check out this height value just in case of layout adjustment stuff,
          ),
          SizedBox(
            height: 290,
            child:
                TodoListWidget(), //TODO: Remember to check out this height value just in case of layout adjustment stuff,
          ),
          SizedBox(height: 80, child: RecentActivitiesTile()),
          SizedBox(
            height: 100,
            child: CreateSafelockTile(),
          ),
          SizedBox(
            height: 450,
            child: QuickOptionsGridTileView(),
          ),
        ],
      ),
    );
  }
}
