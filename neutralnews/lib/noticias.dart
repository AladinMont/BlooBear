import 'package:flutter/material.dart';

class Noticias extends StatefulWidget {
  const Noticias({super.key});

  @override
  State<Noticias> createState() => _NoticiasState();
}

class _NoticiasState extends State<Noticias> {
  @override
  Widget build(BuildContext context) {
    var arreglo = ["uno", "dos"];
    var value1 = "uno";
    var estilo = const TextStyle(
      color: Colors.white,
    );
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
                    child: Text(
                      "BlockNews",
                      style: TextStyle(
                          fontSize: hei * 0.05, fontWeight: FontWeight.w900),
                    ),
                  ),
                ),
                SingleChildScrollView(
                  child: SizedBox(
                      width: textWith,
                      child: Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                border: Border.all(
                              color: Colors.amber,
                            )),
                            height: hei * 0.8,
                            child: Center(
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Expanded(
                                      child: Center(
                                          child: Text(
                                    "Ingrese las noticias",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: wid * 0.03),
                                  ))),
                                  Padding(
                                    padding: EdgeInsets.all(hei * 0.01),
                                    child: Text(
                                      "Ingrese la noticia 1",
                                      style: estilo,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(hei * 0.01),
                                    child: SizedBox(
                                      width: wid * 0.2,
                                      child: TextField(
                                        style: estilo,
                                        onChanged: (value) {},
                                        keyboardType: TextInputType.multiline,
                                        maxLines: 2,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(hei * 0.01),
                                    child: Text(
                                      "Ingrese el firmador la noticia 1",
                                      style: estilo,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(hei * 0.01),
                                    child: DropdownButton(
                                      focusColor:
                                          const Color.fromRGBO(50, 50, 50, 1),
                                      items: arreglo.map<DropdownMenuItem>(
                                          (String value) {
                                        return DropdownMenuItem<String>(
                                            value: value, child: Text(value));
                                      }).toList(),
                                      value: value1,
                                      onChanged: (value) {
                                        setState(() {
                                          value1 = value.toString();
                                          print(value1);
                                        });
                                      },
                                      style: estilo,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(hei * 0.01),
                                    child: Text(
                                      "Ingrese la noticia 2",
                                      style: estilo,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(hei * 0.01),
                                    child: SizedBox(
                                      width: wid * 0.2,
                                      child: TextField(
                                        style: estilo,
                                        onChanged: (value) {},
                                        keyboardType: TextInputType.multiline,
                                        maxLines: 2,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(hei * 0.01),
                                    child: Text(
                                      "Ingrese el firmador la noticia 2",
                                      style: estilo,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(hei * 0.01),
                                    child: DropdownButton(
                                      focusColor:
                                          const Color.fromRGBO(50, 50, 50, 1),
                                      items: arreglo.map<DropdownMenuItem>(
                                          (String value) {
                                        return DropdownMenuItem<String>(
                                            value: value, child: Text(value));
                                      }).toList(),
                                      value: value1,
                                      onChanged: (value) {
                                        setState(() {
                                          value1 = value.toString();
                                          print(value1);
                                        });
                                      },
                                      style: estilo,
                                    ),
                                  ),
                                  Expanded(
                                      child: Center(
                                          child: ElevatedButton(
                                              style: ButtonStyle(
                                                  backgroundColor:
                                                      MaterialStateProperty.all(
                                                          Colors.amber)),
                                              onPressed: () {
                                                //aqui se presiona jsjsjs
                                                Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                        builder: (context) =>
                                                            const Noticias()));
                                              },
                                              child: const Text(
                                                "Enviar",
                                                style: TextStyle(
                                                    color: Colors.black),
                                              )))),
                                ],
                              ),
                            ),
                          )
                        ],
                      )),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
