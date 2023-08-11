import 'package:apps/models/ahadeth_model.dart';
import 'package:flutter/material.dart';

import '../my_theme.dart';

class Hadeth_Details extends StatelessWidget {
  static const String routeName = "hadeth";

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as Ahadeth_model;
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
              args.content[index],
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodySmall,
            ));
          },
          itemCount: args.content.length,
        ),
      ),
    ]);
  }
}
