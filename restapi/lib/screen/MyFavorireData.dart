import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:provider/provider.dart';
import 'package:restapi/provider/favoriteProvider.dart';

class FavoriteAppData extends StatefulWidget {
  const FavoriteAppData({super.key});

  @override
  State<FavoriteAppData> createState() => _FavoriteAppDataState();
}

class _FavoriteAppDataState extends State<FavoriteAppData> {
  @override
  Widget build(BuildContext context) {
    final Data = Provider.of<favoriteProvider>(context);
    return Scaffold(
        appBar: AppBar(
          title: Text('My Favorite Data'),
        ),
        body: ListView.builder(
            itemCount: Data.data.length,
            itemBuilder: (context, index) {
              return ListTile(
                  title: Text("List " + Data.data[index].toString()),
                  trailing: InkWell(
                      onTap: () {
                        Data.setRemove(index);
                      },
                      child: Icon(Icons.favorite)));
            }));
  }
}
