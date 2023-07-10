import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:provider/provider.dart';
import 'package:restapi/provider/countProvider.dart';

class CountScreen extends StatefulWidget {
  const CountScreen({super.key});

  @override
  State<CountScreen> createState() => _CountScreenState();
}

class _CountScreenState extends State<CountScreen> {
  @override
  Widget build(BuildContext context) {
    final _count = Provider.of<countProvider>(context);
    return Scaffold(
        appBar: AppBar(
          title: Text('Provider Learning'),
        ),
        body: Center(
          child: Consumer<countProvider>(builder: (context, value, child) {
            return Text(
              value.count.toString(),
              style: TextStyle(fontSize: 60),
            );
          }),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            _count.setCount();
          },
          child: Icon(Icons.add),
        ));
  }
}
