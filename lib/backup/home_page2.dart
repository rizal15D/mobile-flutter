import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: Center(
        child: Text("Ini halaman home"),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:app/Minggu4/percobaan2/main_screen.dart';
import 'package:app/Minggu4/percobaan2/provider/done_tourism_provider.dart';
import 'package:provider/provider.dart';

class Percobaan2 extends StatefulWidget {
  const Percobaan2({Key? key}) : super(key: key);

  @override
  State<Percobaan2> createState() => _PercobaanState();
}

class _PercobaanState extends State<Percobaan2> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) =>DoneTourismProvider(),
      child: MaterialApp(
        title: 'Contacts',
        theme: ThemeData(),
        home: MainScreen(),
      ),
    );
  }
}