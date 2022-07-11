import 'package:flutter/material.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Extension Methods'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("Ketan".appendWelcomeText,style: TextStyle(fontSize: 40)).addContainerYellow()
            ],
          ),
        )
    );
  }
}

extension on String{

  String get makeCapital => toUpperCase();

  String get keepOnlyText{
    return replaceAll(RegExp(r'(\d)'), '');
  }

  String get keepOnlyNumbers{
    return replaceAll(RegExp(r'([^0-9])'), '');
  }

  String get appendWelcomeText{
    return "Welcome back, $this";
  }
}


extension on Widget{
  addContainerYellow(){
    return Container(
      padding: const EdgeInsets.all(16),
      margin: const EdgeInsets.all(16),
      color: Colors.yellow,
      child: this,
    );
  }
}
