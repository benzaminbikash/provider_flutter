import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:provider/provider.dart';
import 'package:restapi/provider/favoriteProvider.dart';
import 'package:restapi/screen/MyFavorireData.dart';

class favScreen extends StatefulWidget {
  const favScreen({super.key});

  @override
  State<favScreen> createState() => _favScreenState();
}

class _favScreenState extends State<favScreen> {
  @override
  Widget build(BuildContext context) {
    print('build');
    final _fav = Provider.of<favoriteProvider>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        title: Text('Favorite App'),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return FavoriteAppData();
                  }));
                },
                child: Icon(Icons.favorite)),
          )
        ],
      ),
      body: ListView.builder(
          itemCount: 40,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text('List  ' + index.toString()),
              trailing:
                  Consumer<favoriteProvider>(builder: (context, value, child) {
                return IconButton(
                    onPressed: () {
                      if (value.data.contains(index)) {
                        value.setRemove(index);
                      } else {
                        value.setAdd(index);
                      }
                    },
                    icon: Icon(value.data.contains(index)
                        ? Icons.favorite
                        : Icons.favorite_outline));
              }),
            );
          }),
    );
  }
}
