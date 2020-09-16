import 'package:find_out_flutter/themes/theme.dart';
import 'package:flutter/material.dart';

// PAGES
import 'package:find_out_flutter/pages/login_page.dart';
import 'package:flutter/services.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      // statusBarIconBrightness: Brightness.dark, //top bar icons
    ));
    return MaterialApp(
        theme: myTheme,
        debugShowCheckedModeBanner: false,
        title: 'Material App',
        initialRoute: 'login',
        routes: {'login': (_) => LoginPage()});
  }
}
