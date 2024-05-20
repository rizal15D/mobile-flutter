import 'package:flutter/material.dart';
import 'package:uts/model/articles.dart';

class ListItem extends StatelessWidget{
  final Article data;
  final bool inCart;
  final Function(bool? value) onCheckboxClick;

  const ListItem({
    required this.data,
    required this.inCart,
    required this.onCheckboxClick,
  });

  @override
  Widget build(BuildContext context){
    return Card(
      color: inCart ? Colors.white60 : Colors.white,
      child :Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
            flex: 1,
            child: Image.network(data.urlToImg),
          ),
          Expanded(
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text(
                      data.name,
                      style: const TextStyle(fontSize: 16.0),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(data.price),
                  ],
                ),
              )
          ),
          Checkbox(
              checkColor: Colors.blueAccent,
              value: inCart,
              onChanged: onCheckboxClick
          ),
        ],
      ),
    );
  }
}