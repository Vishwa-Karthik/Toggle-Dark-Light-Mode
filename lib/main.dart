import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

ThemeData _lightTheme =
    ThemeData(brightness: Brightness.light, primarySwatch: Colors.purple);

ThemeData _darkTheme = ThemeData(
  brightness: Brightness.dark,
  primaryColor: Colors.redAccent,
);

bool _light = true;

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "SWITCH MODE",
      theme: _light ? _lightTheme : _darkTheme,
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: _light ? Colors.deepPurple[100] : Colors.grey[300],
        //if(){}else{},
        appBar: AppBar(
          title: const Text("C O L O R - M O D E"),
          centerTitle: true,
        ),
        body: Center(
            child: Switch(
                value: _light,
                onChanged: (state) {
                  setState(() {
                    _light = state;
                  });
                })),
      ),
    );
  }
}
