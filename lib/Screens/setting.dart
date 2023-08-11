import 'package:apps/Bottomsheet_theme.dart';
import 'package:apps/bottom_sheet.dart';
import 'package:apps/my_theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../my_provider.dart';

class Setting extends StatelessWidget {
  const Setting({super.key});

  @override
  Widget build(BuildContext context) {
    var pro = Provider.of<Myprovider>(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "Language",
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ),
        InkWell(
          onTap: () {
            Showbottomsheetlanguage(context);
          },
          child: Container(
            margin: EdgeInsets.only(right: 12, left: 12),
            padding: EdgeInsets.all(15),
            width: double.infinity,
            child: Text(pro.language == 'ar' ? 'Arabic' : 'English'),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: My_theme.primarycolor)),
          ),
        ),
        SizedBox(
          height: 45,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "Themes",
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ),
        InkWell(
          onTap: () {
            Showbottomsheettheme(context);
          },
          child: Container(
            margin: EdgeInsets.only(right: 12, left: 12),
            padding: EdgeInsets.all(15),
            width: double.infinity,
            child: Text("Light"),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: My_theme.primarycolor)),
          ),
        )
      ],
    );
  }

  Showbottomsheetlanguage(BuildContext context) {
    return showModalBottomSheet(
      context: context,
      builder: (context) {
        return Bottomsheet_lang();
      },
    );
  }

  Showbottomsheettheme(BuildContext context) {
    return showModalBottomSheet(
      context: context,
      builder: (context) {
        return Bottomsheet_theme();
      },
    );
  }
}
