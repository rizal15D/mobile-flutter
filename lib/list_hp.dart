import 'dart:convert';
import 'package:uts/detail_hp.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:uts/model/articles.dart';

class ListHP extends StatefulWidget {
  const ListHP({Key? key}) : super(key: key);
  static const routeName = '/article_list';

  @override
  _ListHPState createState() => _ListHPState();

}

class _ListHPState extends State<ListHP>{

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: FutureBuilder<String>(
        future: DefaultAssetBundle.of(context).loadString('assets/contents/articles.json'),
        builder: (context, snapshot){
          final List<Article> articles = parseArticles(snapshot.data);
          return ListView.builder(
            itemCount:  articles.length,
            itemBuilder: (context, index){
              return _buildArticleItem(context, articles[index]);
            },
          );
        },
      ),
    );
  }
}

List<Article> parseArticles(String? json){
  if(json == null){
    return [];
  }
  final List parsed = jsonDecode(json);
  return parsed.map<Article>((json) => Article.fromJson(json)).toList();
}

Widget _buildArticleItem(BuildContext context, Article data){
  return ListTile(
    contentPadding:
    const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
    leading: Image.network(
      data.urlToImg,
      width: 100,
    ),
    title: Text(data.name),
    subtitle: Text(data.price),
    onTap: (){
      Navigator.push(context, MaterialPageRoute(builder: (context) => DetailHP(data: data,)),);
      // Navigator.pushNamed(context, DetailHP.routeName, arguments: data);
    },
  );
}