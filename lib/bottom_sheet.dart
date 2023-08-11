import 'package:apps/my_provider.dart';
import 'package:apps/my_theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Bottomsheet_lang extends StatelessWidget {
  const Bottomsheet_lang({super.key});

  @override
  Widget build(BuildContext context) {
    var pro = Provider.of<Myprovider>(context);
    return Container(
      margin: EdgeInsets.all(15),
      child: Column(
        children: [
          InkWell(
            onTap: () {
              pro.ChangeLangauge("ar");
            },
            child: Padding(
              padding: EdgeInsets.all(9),
              child: Row(
                children: [
                  Text("Arabic",
                      style: pro.language == 'ar'
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
                      color: pro.language == 'ar'
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
              pro.ChangeLangauge("en");
            },
            child: Padding(
              padding: EdgeInsets.all(9),
              child: Row(
                children: [
                  Text("English",
                      style: pro.language == 'en'
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
                      color: pro.language == 'en'
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
