import 'package:flutter/material.dart';
import 'package:uts/model/articles.dart';
import 'package:uts/provider/cart_provider.dart';
import 'package:provider/provider.dart';

class CartList extends StatelessWidget{
  const CartList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<Article> inCartList =
        Provider.of<CartProvider>(
          context,
          listen: false,
        ).inCartList;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Cart List'),
      ),
      body: ListView.builder(
        itemBuilder: (context, index){
          final Article data = inCartList[index];
          return Card(
            color: Colors.white60,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  data.name,
                  style: const TextStyle(fontSize: 16.0),
                ),
                const Icon(Icons.done_outline),
              ],
            ),
          );
        },
        itemCount: inCartList.length,
      ),
    );
  }
}