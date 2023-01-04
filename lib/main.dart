import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Card Design'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

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
      body: ListView(
            children: [
              LayoutBuilder(
                builder: (context, constraints){
                return Padding(
                  padding:  EdgeInsets.all(20),
                  child: Stack(
                    children: [
                      SizedBox(
                        width: constraints.maxWidth,
                        height: 150,
                        child: const Card(
                          color: Colors.red,
                          elevation: 5,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(50/3),
                        child: Container(
height: 50,
                          width: 0.3*constraints.maxWidth,
                          color: Colors.grey,
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        child: Padding(
                          padding: const EdgeInsets.all(50/3),
                          child: Container(
                            width: constraints.maxWidth -70,
                            height: 50,
                              color: Colors.green,
                          ),
                        ),
                      ),

                    ],
                  ),
                );},
              ),
              const SizedBox(height: 100,),
              LayoutBuilder(
                builder: (context,constraints) {
                  return Padding(
                    padding:  EdgeInsets.all(20),
                    child: Stack(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: SizedBox(
                            width: constraints.maxWidth,
                            height: 150,
                            child: const Card(
                              color: Colors.red,
                              elevation: 5,
                            ),
                          ),
                        ),
                        Positioned(
                        bottom: 0,
                          child: Padding(
                            padding: const EdgeInsets.all(50/3),
                            child: Container(
                              width: constraints.maxWidth-70,
                              height: 50,
                              color: Colors.green,
                            ),
                          ),
                        ),
                        Center(
                          child: Container(
                            height: 50,
                            width: 200,
                            color: Colors.grey,
                          ),
                        ),

                      ],
                    ),
                  );
                }
              )
            ],
          ));
        }

}
