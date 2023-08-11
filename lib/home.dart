import 'package:apps/Screens/Quran_screen.dart';
import 'package:apps/Screens/Radio_screen.dart';
import 'package:apps/Screens/Sebha_screen.dart';
import 'package:apps/Screens/ahadeth_screen.dart';
import 'package:apps/Screens/setting.dart';
import 'package:flutter/material.dart';

class Home_page extends StatefulWidget {
  static const String routeName = "home";

  @override
  State<Home_page> createState() => _Home_pageState();
}

class _Home_pageState extends State<Home_page> {
  List<Widget> screens = [
    Quran_screen(),
    Radio_screen(),
    Sebha_screen(),
    Ahadeth_screen(),
    Setting()
  ];
  int currentindex = 0;

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Image.asset(
        "asset/image/main_bd.png",
        width: double.infinity,
        fit: BoxFit.fill,
      ),
      Scaffold(
        appBar: AppBar(
          title: Text(
            "Islami",
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          centerTitle: true,
        ),
        bottomNavigationBar: BottomNavigationBar(
            currentIndex: currentindex,
            onTap: (value) {
              currentindex = value;
              setState(() {});
            },
            items: [
              BottomNavigationBarItem(
                  icon: ImageIcon(
                    AssetImage("asset/image/moshaf.png"),
                    size: 45,
                  ),
                  label: ""),
              BottomNavigationBarItem(
                  icon:
                      ImageIcon(AssetImage("asset/image/radio.png"), size: 40),
                  label: ""),
              BottomNavigationBarItem(
                  icon:
                      ImageIcon(AssetImage("asset/image/sebha.png"), size: 40),
                  label: ""),
              BottomNavigationBarItem(
                  icon:
                      ImageIcon(AssetImage("asset/image/Path 1.png"), size: 40),
                  label: ""),
              BottomNavigationBarItem(
                  icon: const Icon(
                    Icons.settings,
                    size: 35,
                  ),
                  label: "",
                  backgroundColor: Theme.of(context).primaryColor),
            ]),
        body: screens[currentindex],
      ),
    ]);
  }
}
