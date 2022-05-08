import 'package:flutter/material.dart';
import 'package:q_savings_app/screens/my_savings_page/Widgets/grid_overview_tile.dart';
import 'package:q_savings_app/screens/my_savings_page/Widgets/top_header_widget.dart';

class MySavingsPage extends StatelessWidget {
  const MySavingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar(),
      //This is just temporal for now, i'm still gonna re-structure this
      body: SingleChildScrollView(
        child: Column(
          children: const [
            SizedBox(
              height: 230,
              child: TopHeaderWidgetSavings(),
            ),
            SizedBox(
              height: 650,
              child: GridTileOverView(),
            ),
          ],
        ),
      ),
    );
  }
}
