import 'package:flutter/material.dart';
import 'package:neutralnews/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Admin BlockNews',
      debugShowCheckedModeBanner: false,
      home: Main(),
    );
  }
}

class Main extends StatelessWidget {
  const Main({super.key});

  @override
  Widget build(BuildContext context) {
    final wid = MediaQuery.of(context).size.width;
    final hei = MediaQuery.of(context).size.height;
    double maxWith = wid > 1200 ? 1200 : wid;
    double textWith = wid > 800 ? wid - (wid * 0.4) : wid - (wid * 0.2);
    return Scaffold(
      backgroundColor: const Color.fromRGBO(50, 50, 50, 1),
      body: SingleChildScrollView(
        child: Center(
          child: SizedBox(
            width: maxWith,
            height: hei,
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Container(
                  decoration: const BoxDecoration(color: Colors.amber),
                  width: wid,
                  height: hei * 0.1,
                  child: Center(
                    child: Text("BlockNews",style: TextStyle(fontSize: hei*0.05,fontWeight: FontWeight.w900),),
                  ),
                ),
                SizedBox(width: textWith, child: const Login())
              ],
            ),
          ),
        ),
      ),
    );
  }
}
