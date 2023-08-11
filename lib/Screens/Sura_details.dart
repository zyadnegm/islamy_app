import 'package:apps/models/sura_model.dart';
import 'package:apps/my_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Sura_details extends StatefulWidget {
  static const String routeName = "sura";

  @override
  State<Sura_details> createState() => _Sura_detailsState();
}

class _Sura_detailsState extends State<Sura_details> {
  List<String> verse = [];

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as Sura_model;
    if (verse.isEmpty) {
      Load_files(args.index);
    }

    return Stack(children: [
      Image.asset(
        "asset/image/main_bd.png",
        width: double.infinity,
        fit: BoxFit.fill,
      ),
      Scaffold(
        appBar: AppBar(
          title: Text(args.name),
          centerTitle: true,
        ),
        body: ListView.separated(
          separatorBuilder: (context, index) {
            return Divider(
              color: My_theme.primarycolor,
            );
          },
          itemBuilder: (context, index) {
            return Center(
                child: Text(
              verse[index],
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodySmall,
            ));
          },
          itemCount: verse.length,
        ),
      ),
    ]);
  }

  void Load_files(int index) async {
    String files = await rootBundle.loadString("asset/files/${index + 1}.txt");
    List<String> sura_lines = files.split("\n");
    verse = sura_lines;
    print(sura_lines);
    setState(() {});
  }
}
