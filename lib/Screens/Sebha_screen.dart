import 'package:apps/my_theme.dart';
import 'package:flutter/material.dart';

class Sebha_screen extends StatefulWidget {
  @override
  State<Sebha_screen> createState() => _Sebha_screenState();
}

class _Sebha_screenState extends State<Sebha_screen> {
  int total_count = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 40),
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 200,
            height: 200,
            child: Image.asset(
              "asset/image/sebha.png",
              color: My_theme.primarycolor,
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Text("عدد التسبيحات"),
          Container(
            width: 70,
            height: 80,
            alignment: Alignment.center,
            decoration: BoxDecoration(
                color: My_theme.primarycolor,
                borderRadius: BorderRadius.circular(30)),
            child: Text(
              "$total_count",
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ),
          SizedBox(
            height: 30,
          ),
          InkWell(
            onTap: () {
              return Sebha_count();
            },
            child: Container(
              alignment: Alignment.center,
              width: 205,
              height: 50,
              decoration: BoxDecoration(
                  color: My_theme.primarycolor,
                  borderRadius: BorderRadius.circular(30)),
              child: Text(
                tasbeh,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 23,
                    color: Colors.white),
              ),
            ),
          )
        ],
      ),
    );
  }

  String tasbeh = "";

  void Sebha_count() {
    int count = 0;

    List<String> tasbehat = ["سبحان الله", "الله اكبر", "استغفر الله"];
    if (total_count <= 30) {
      tasbeh = tasbehat[count];
      total_count++;
    } else {
      total_count = 0;
      count++;
      tasbeh = tasbehat[count];
    }

    setState(() {});
  }
}
