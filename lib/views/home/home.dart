import 'package:flutter/material.dart';

import 'package:taska/utilities/interger.dart';
import 'package:taska/utilities/strings.dart';

import '../../utilities/colors.dart';
import '../../widgets/checkBoxListTile.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);
  static String homeScreenRoute = 'homeScreen';

  var time = DateTime.now().toString();

  var _checked;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        initialIndex: 0,
        length: Intergers.two,
        child: Scaffold(
          backgroundColor: whiteTextColor,
          appBar: AppBar(
              automaticallyImplyLeading: false,
              bottom: const TabBar(tabs: <Widget>[
                Tab(
                  text: HomeScreenString.today,
                ),
                Tab(text: HomeScreenString.month)
              ]),
              actions: [
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.access_alarm,
                      color: whiteTextColor,
                    ))
              ],
              elevation: 0,
              backgroundColor: primaryColor,
              iconTheme: IconThemeData(
                color: primaryColor,
              )),
          body: SafeArea(
            child: TabBarView(children: <Widget>[
              Column(
                children: [
                  const Center(
                    child: Text("It's cloudy here"),
                  ),
                  Expanded(
                      flex: 1,
                      child: ListView.builder(
                          itemCount: 5,
                          itemBuilder: (BuildContext context, int index) {
                            return TodaysTask(checked: _checked, time: time);
                          })),
                  const Expanded(child: FlutterLogo())
                ],
              ),
              const Center(
                child: Text("It's rainy here"),
              ),
            ]),
          ),
          bottomNavigationBar: BottomNavigationBar(
              showSelectedLabels: false,
              showUnselectedLabels: false,
              backgroundColor: Colors.lightBlue.shade900,
              selectedItemColor: whiteTextColor,
              unselectedItemColor: grayTextColor,
              items: const <BottomNavigationBarItem>[
                BottomNavigationBarItem(icon: Icon(Icons.task), label: 'task'),
                BottomNavigationBarItem(icon: Icon(Icons.task), label: 'task'),
                BottomNavigationBarItem(icon: Icon(Icons.task), label: 'task'),
                BottomNavigationBarItem(icon: Icon(Icons.task), label: 'task')
              ]),
        ));
  }
}
