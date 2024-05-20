import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:uts/model/articles.dart';

class ListHP extends StatelessWidget {
  const ListHP({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return ListView.builder(
      itemBuilder: (context, index) {
        final Article hp = listHP[index];
        return InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return DetailHP(listHP: listHP);
              }));
            },
            child: Consumer<DoneTourismProvider>(
                builder: (context, DoneTourismProvider data, widget){
                  return ListItem(
                    place: place,
                    isDone: data.doneTourismPlaceList.contains(place),
                    onCheckboxClick: (bool? value){
                      data.complete(place, value!);
                    },
                  );
                }
            )
        );
      },
      itemCount: tourismPlaceList.length,
    );
  }
}
