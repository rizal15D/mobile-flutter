import 'package:flutter/material.dart';
import 'package:uts/cart_list.dart';
import 'package:uts/model/articles.dart';
import 'package:flutter/cupertino.dart';
import 'package:uts/provider/cart_provider.dart';
import 'package:uts/list_item.dart';
import 'package:provider/provider.dart';
import 'dart:convert';

class DetailHP extends StatelessWidget {
  // const DetailHP({Key? key, required this.data}) : super(key: key);
  static const routeName = 'article_detail';

  final Article data;
  DetailHP({required this.data});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(data.name),
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
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child:Consumer<CartProvider>(
            builder: (context, CartProvider data2, widget){
              return ListItem(
                data: data,
                inCart: data2.inCartList.contains(data),
                onCheckboxClick: (bool? value){
                  data2.complete(data, value!);
                },
              );
            }
        ),
      )
    );
  }
}

