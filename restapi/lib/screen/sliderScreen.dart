import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:provider/provider.dart';
import 'package:restapi/provider/sliderProvider.dart';

class sliderScreen extends StatefulWidget {
  const sliderScreen({super.key});

  @override
  State<sliderScreen> createState() => _sliderScreenState();
}

class _sliderScreenState extends State<sliderScreen> {
  double value = 1.0;
  @override
  Widget build(BuildContext context) {
    print('build');
    final _slider = Provider.of<sliderProvider>(context, listen: false);
    return Scaffold(
      appBar: AppBar(title: Text('Slider')),
      body: Column(
        children: [
          Consumer<sliderProvider>(builder: (context, value, child) {
            return Slider(
                min: 0,
                max: 1,
                value: value.value,
                onChanged: (val) {
                  _slider.setValue(val);
                });
          }),
          Consumer<sliderProvider>(builder: (context, value, child) {
            return Container(
                width: 120,
                height: 120,
                color: Colors.red.withOpacity(value.value));
          }),
          Consumer<sliderProvider>(builder: (context, value, child) {
            return Container(
                width: 120,
                height: 120,
                color: Colors.black.withOpacity(value.value));
          }),
        ],
      ),
    );
  }
}
