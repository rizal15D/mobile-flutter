import 'package:flutter/cupertino.dart';
import 'package:uts/model/articles.dart';

class CartProvider extends ChangeNotifier{
  final List<Article> _inCartList = [];

  List<Article> get inCartList => _inCartList;

  void complete(Article buy, bool inCart){
    inCart
        ? _inCartList.add(buy)
        : _inCartList.remove(buy);
    notifyListeners();
  }
}