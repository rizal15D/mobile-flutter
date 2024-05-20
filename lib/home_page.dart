import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:uts/cart_list.dart';
import 'package:uts/list_hp.dart';
import 'package:uts/model/articles.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();

}

class _HomePageState extends State<HomePage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Info HP'),
        actions: <Widget>[
          IconButton(
              icon: const Icon(Icons.shopping_cart),
              onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context){
                    return const CartList();
                  }),
                );
              }
          )
        ],
      ),
      body: const ListHP(),
    );
  }
}

