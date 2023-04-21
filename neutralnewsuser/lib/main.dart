import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:neutralnewsuser/network.dart';
import 'package:neutralnewsuser/noticia.dart';

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
    // var response = Network.lista();
    // var arre = Lsiatas.fromjson(json.decode(response).cast<String, dynamic>());
    // print(arre);
    var array = ["Uno", "Dos"];
    var eventos = ["evento1", "evento2"];
    final wid = MediaQuery.of(context).size.width;
    final hei = MediaQuery.of(context).size.height;
    double maxWith = wid > 1200 ? 1200 : wid;
    double textWith = wid > 800 ? wid - (wid * 0.4) : wid - (wid * 0.2);
    return Scaffold(
      backgroundColor: const Color.fromRGBO(50, 50, 50, 1),
      body: Center(
        child: SizedBox(
          width: maxWith,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Container(
                decoration: const BoxDecoration(color: Colors.amber),
                width: wid,
                height: hei * 0.1,
                child: Center(
                  child: Text(
                    "BlockNews",
                    style: TextStyle(
                        fontSize: hei * 0.05, fontWeight: FontWeight.w900),
                  ),
                ),
              ),
              SizedBox(
                  width: textWith,
                  height: hei * 0.8,
                  child: ListView.builder(
                    itemCount: array.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: EdgeInsets.all(wid * 0.001),
                        child: ListTile(
                          tileColor: Colors.amber,
                          title: Text(array[index]),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Noticia()));
                          },
                        ),
                      );
                    },
                  ))
            ],
          ),
        ),
      ),
    );
  }
}

class Lsiatas {
  final title;

  Lsiatas(this.title);
  factory Lsiatas.fromjson(List<dynamic> json) {
    return Lsiatas(json[0]);
  }
}
