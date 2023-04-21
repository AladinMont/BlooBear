import 'package:flutter/material.dart';

class Noticia extends StatefulWidget {
  const Noticia({super.key});

  @override
  State<Noticia> createState() => _NoticiaState();
}

class _NoticiaState extends State<Noticia> {
  @override
  Widget build(BuildContext context) {
    var eventos = ["evento1", "evento2"];
    var array = ["Uno", "Dos","tres", "cuatro","cinco", "seis","Uno", "Dos","Uno", "Dos","Uno", "Dos","Uno", "Dos","Uno", "Dos"];
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
                  child: Column(
                    children: [
                       const Center(
                           child: Text(
                         "Texto1",
                         style: TextStyle(color: Colors.white),
                       )),
                       const Center(
                           child: Text(
                         "Texto1",
                         style: TextStyle(color: Colors.white),
                       )),
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.amber)
                        ),
                        width: textWith*0.1,
                        height: hei*0.3,
                        child: ListView.builder(
                          itemCount: array.length,
                          shrinkWrap: true,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: EdgeInsets.all(wid * 0.001),
                              child: ListTile(
                                
                                title: Text(array[index],style: const TextStyle(color: Colors.white,),),
                                onTap: () {},
                              ),
                            );
                          },
                        ),
                      )
                    ],
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
