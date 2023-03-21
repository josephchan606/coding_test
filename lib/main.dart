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
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    const actualText =
        "roses are red violets are blue, I have a message just for you. you are amazing, and I love as always";

    return Scaffold(
      body: Center(
          child: Container(
        constraints: BoxConstraints(
            maxHeight: 90, maxWidth: 198, minWidth: 72, minHeight: 72),
        decoration: BoxDecoration(
          color: Colors.greenAccent.shade700,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(8.0),
            topRight: Radius.circular(8.0),
            bottomRight: Radius.circular(8.0),
          ),
          border: Border.all(
            color: Colors.grey,
            width: 1,
          ),
        ),
        child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: RichText(
              textAlign: TextAlign.left,
              softWrap: true,
              overflow: TextOverflow.ellipsis,
              maxLines: 4,
              text: TextSpan(
                style: TextStyle(
                  fontSize: 9.0,
                  color: Colors.white,
                ),
                children: <TextSpan>[
                  TextSpan(
                    text: 'John\n',
                    style: TextStyle(color: Colors.white70),
                  ),
                  TextSpan(
                    text: actualText,
                    style: TextStyle(
                      fontSize: 13.0,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            )),
      )),
    );
  }
}
