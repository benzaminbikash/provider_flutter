import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class MyPageWithoutProvider extends StatelessWidget {
  MyPageWithoutProvider({super.key});
  ValueNotifier<int> _counter = ValueNotifier<int>(0);

  @override
  Widget build(BuildContext context) {
    print('hello');
    return Scaffold(
        appBar: AppBar(
          title: Text('StateLess Widget'),
        ),
        body: ValueListenableBuilder(
            valueListenable: _counter,
            builder: (context, value, child) {
              return Text(_counter.value.toString());
            }),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            _counter.value++;
            print('hey');
          },
          child: Icon(Icons.add),
        ));
  }
}
