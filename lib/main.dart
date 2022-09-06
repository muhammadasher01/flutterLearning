import 'package:dummyflutterapps/pages/homepage.dart';
import 'package:dummyflutterapps/pages/loginpage.dart';
import 'package:dummyflutterapps/utils/MyRoutes.dart';
import 'package:dummyflutterapps/widgets/themes.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: MyThemes().lightTheme(context),
      darkTheme: MyThemes().darkTheme(context),
      debugShowCheckedModeBanner: false,
      //home: homePage(),
      initialRoute: MyRoutes.homeRoutes ,
      routes: {
        MyRoutes.loginroutes: (context) => loginpage(),
        MyRoutes.homeRoutes : (context) => homePage()
      },
    );
  }
}
