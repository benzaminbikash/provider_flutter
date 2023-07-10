import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:provider/provider.dart';
import 'package:restapi/provider/darkProvider.dart';

class DarkScreen extends StatefulWidget {
  const DarkScreen({super.key});

  @override
  State<DarkScreen> createState() => _DarkScreenState();
}

class _DarkScreenState extends State<DarkScreen> {
  @override
  Widget build(BuildContext context) {
    final _theme = Provider.of<themeProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Theme Changing'),
      ),
      body: Column(
        children: [
          RadioListTile<ThemeMode>(
              title: Text('Light Theme'),
              value: ThemeMode.light,
              groupValue: _theme.themeMode,
              onChanged: _theme.setThemeMode),
          RadioListTile<ThemeMode>(
              title: Text('Dark Theme'),
              value: ThemeMode.dark,
              groupValue: _theme.themeMode,
              onChanged: _theme.setThemeMode),
          RadioListTile<ThemeMode>(
              title: Text('System Theme'),
              value: ThemeMode.system,
              groupValue: _theme.themeMode,
              onChanged: _theme.setThemeMode),
          Icon(Icons.favorite)
        ],
      ),
    );
  }
}
