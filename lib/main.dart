import 'package:apps/Screens/Sura_details.dart';
import 'package:apps/Screens/ahadeth_details.dart';
import 'package:apps/home.dart';
import 'package:apps/my_provider.dart';
import 'package:apps/my_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider<Myprovider>(
      create: (context) => Myprovider(), child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<Myprovider>(context);
    return MaterialApp(
      localizationsDelegates: [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      locale: Locale(provider.language),
      supportedLocales: [
        Locale('en'),
        Locale('ar'),
      ],
      initialRoute: Home_page.routeName,
      debugShowCheckedModeBanner: false,
      routes: {
        Home_page.routeName: (context) => Home_page(),
        Sura_details.routeName: (context) => Sura_details(),
        Hadeth_Details.routeName: (context) => Hadeth_Details(),
      },
      theme: My_theme.LightTheme,
      darkTheme: My_theme.darkTheme,
      themeMode: provider.theme,
    );
  }
}
