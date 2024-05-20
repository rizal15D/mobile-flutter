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
          return SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Image.network(data.urlToImg),
                Container(
                    margin: const EdgeInsets.only(top: 16.0),
                    child:  Text(
                      data.name,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                          fontSize: 30.0,
                          fontFamily: 'Lobster'
                      ),
                    )
                ),
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          Text(data.price),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 16.0),
                  child: SingleChildScrollView(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          data.ram,
                          style: const TextStyle(
                            fontSize: 16.0,
                            fontFamily: 'Oxygen',
                          ),
                        ),
                        const Text("/"),
                        Text(
                          data.storage,
                          style: const TextStyle(
                            fontSize: 16.0,
                            fontFamily: 'Oxygen',
                          ),
                        ),
                        const Text(" GB"),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          );
        },
        itemCount: inCartList.length,
      ),
    );
  }
}