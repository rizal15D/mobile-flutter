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
        itemBuilder: (context, index) {
          final Article data = inCartList[index];
          return ListTile(
            contentPadding:
            const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            leading: Image.network(
            data.urlToImg,
            width: 100,
            ),
            title: Text(data.name),
            subtitle: Text(data.price),
          );
        },
        itemCount: inCartList.length,
      ),
    );
  }
}