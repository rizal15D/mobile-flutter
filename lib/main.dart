// import 'package:flutter/material.dart';
// import 'package:uts/splash_screen.dart';
// import 'package:provider/provider.dart';
// // import 'package:app/Minggu4/percobaan2/provider/done_tourism_provider.dart';
//
//
// void main() {
//   runApp(MaterialApp(
//     debugShowCheckedModeBanner: false,
//     title: 'Splash Screen',
//     home: SplashScreen(),
//   ));
// }

import 'package:flutter/material.dart';
import 'package:uts/home_page.dart';
import 'package:uts/provider/cart_provider.dart';
import 'package:provider/provider.dart';
import 'package:uts/splash_screen.dart';

void main(){
  runApp(const _app());
}

class _app extends StatefulWidget {
  const _app({Key? key}) : super(key: key);

  @override
  State<_app> createState() => _appState();
}

class _appState extends State<_app> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) =>CartProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Contacts',
        theme: ThemeData(),
        home: SplashScreen(),
      ),
    );
  }
}