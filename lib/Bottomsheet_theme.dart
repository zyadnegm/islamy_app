import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'my_provider.dart';
import 'my_theme.dart';

class Bottomsheet_theme extends StatelessWidget {
  const Bottomsheet_theme({super.key});

  @override
  Widget build(BuildContext context) {
    var pro = Provider.of<Myprovider>(context);
    return Container(
      margin: EdgeInsets.all(15),
      child: Column(
        children: [
          InkWell(
            onTap: () {
              pro.Changetheme(ThemeMode.light);
            },
            child: Padding(
              padding: EdgeInsets.all(9),
              child: Row(
                children: [
                  Text("Light",
                      style: pro.theme == ThemeMode.light
                          ? Theme.of(context)
                              .textTheme
                              .bodyMedium!
                              .copyWith(color: My_theme.primarycolor)
                          : Theme.of(context)
                              .textTheme
                              .bodyMedium!
                              .copyWith(color: Colors.black)),
                  Spacer(),
                  Icon(Icons.done,
                      color: pro.theme == ThemeMode.light
                          ? My_theme.primarycolor
                          : Colors.black)
                ],
              ),
            ),
          ),
          SizedBox(
            height: 12,
          ),
          Divider(
            color: My_theme.primarycolor,
            indent: 45,
            endIndent: 45,
            height: 10,
          ),
          SizedBox(
            height: 12,
          ),
          InkWell(
            onTap: () {
              pro.Changetheme(ThemeMode.dark);
            },
            child: Padding(
              padding: EdgeInsets.all(9),
              child: Row(
                children: [
                  Text("Dark",
                      style: pro.theme == ThemeMode.dark
                          ? Theme.of(context)
                              .textTheme
                              .bodyMedium!
                              .copyWith(color: My_theme.primarycolor)
                          : Theme.of(context)
                              .textTheme
                              .bodyMedium!
                              .copyWith(color: Colors.black)),
                  Spacer(),
                  Icon(Icons.done,
                      color: pro.theme == ThemeMode.dark
                          ? My_theme.primarycolor
                          : Colors.black)
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
