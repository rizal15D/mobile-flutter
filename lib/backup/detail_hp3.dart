import 'package:flutter/material.dart';
import 'package:uts/model/articles.dart';
import 'package:flutter/cupertino.dart';
import 'dart:convert';

class DetailHP extends StatelessWidget {
  // const DetailHP({Key? key, required this.data}) : super(key: key);
  static const routeName = 'article_detail';

  final Article data;
  DetailHP({required this.data});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: SingleChildScrollView(
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
            )
        )
    );
  }
}

