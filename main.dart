import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String text = "Hello, World!";
  Color bgColor = Colors.white;

  void changeText() {
    setState(() {
      text = "Button Clicked!";
    });
  }

  void removeText() {
    setState(() {
      text = "";
    });
  }

  void changeBackgroundColor() {
    setState(() {
      bgColor = bgColor == Colors.white ? Colors.blue : Colors.white;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(title: Text("Flutter Buttons Example")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(text, style: TextStyle(fontSize: 24)),
            SizedBox(height: 20),
            ElevatedButton(onPressed: changeText, child: Text("Change Text")),
            ElevatedButton(onPressed: removeText, child: Text("Remove Text")),
            ElevatedButton(
                onPressed: changeBackgroundColor, child: Text("Change Background")),
          ],
        ),
      ),
    );
  }
}
