import 'package:apps/Screens/ahadeth_details.dart';
import 'package:apps/my_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

import '../models/ahadeth_model.dart';

class Ahadeth_screen extends StatefulWidget {
  @override
  State<Ahadeth_screen> createState() => _Ahadeth_screenState();
}

class _Ahadeth_screenState extends State<Ahadeth_screen> {
  List<Ahadeth_model> ahadeth_data = [];

  @override
  Widget build(BuildContext context) {
    if (ahadeth_data.isEmpty) {
      loadhadeth();
    }
    return Center(
      child: Column(
        children: [
          Image.asset(
              "asset/image/59253-quran-basmala-islamic-kufic-arabic-calligraphy-icon.png"),
          Divider(
            thickness: 3,
            color: Color(0xffB7935F),
          ),
          Text(
            "ahadeth",
            style: GoogleFonts.elMessiri(
                fontWeight: FontWeight.bold, fontSize: 20, color: Colors.black),
          ),
          Divider(
            thickness: 3,
            color: Color(0xffB7935F),
          ),
          Expanded(
            child: ListView.separated(
              separatorBuilder: (context, index) {
                return Divider(
                  thickness: 1,
                  color: My_theme.primarycolor,
                );
              },
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, Hadeth_Details.routeName,
                        arguments: ahadeth_data[index]);
                  },
                  child: Text(
                    ahadeth_data[index].name,
                    style: Theme.of(context).textTheme.bodySmall,
                    textAlign: TextAlign.center,
                  ),
                );
              },
              itemCount: ahadeth_data.length,
            ),
          )
        ],
      ),
    );
  }

  void loadhadeth() async {
    String files = await rootBundle.loadString("asset/files/ahadeth .txt");
    List<String> ahadeth = files.split("#");
    for (int i = 0; i < ahadeth.length; i++) {
      List<String> lines = ahadeth[i].trim().split("\n");
      String ahadeth_title = lines[0];
      lines.removeAt(0);
      List<String> ahadeth_content = lines;
      ahadeth_data.add(Ahadeth_model(ahadeth_title, ahadeth_content));
    }
    setState(() {});
  }
}
