import 'package:flutter/material.dart';
import 'package:neutralnews/noticias.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    String usuario = "";
    String pass = "";
    final hei = MediaQuery.of(context).size.height;
    final wid = MediaQuery.of(context).size.width;
    var estilo = const TextStyle(
      color: Colors.white,
    );
    return Container(
      decoration: BoxDecoration(
          border: Border.all(
        color: Colors.amber,
      )),
      height: hei * 0.8,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          mainAxisSize: MainAxisSize.min,
          children: [
            Expanded(
                child: Center(
                    child: Text(
              "Inicio de sesión",
              style: TextStyle(color: Colors.white, fontSize: wid * 0.03),
            ))),
            Padding(
              padding: EdgeInsets.all(hei * 0.01),
              child: Text(
                "Ingrese su Usuario",
                style: estilo,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(hei * 0.03),
              child: SizedBox(
                width: wid * 0.2,
                child: TextField(
                  style: estilo,
                  onChanged: (value) {
                    setState(() {
                      usuario = value;
                    });
                  },
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(hei * 0.01),
              child: Text(
                "Ingrese su Contraseña",
                style: estilo,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(hei * 0.03),
              child: SizedBox(
                width: wid * 0.2,
                child: TextField(
                  style: estilo,
                  obscureText: true,
                  onChanged: (value) {
                    setState(() {
                      pass = value;
                    });
                  },
                ),
              ),
            ),
            Expanded(
                child: Center(
                    child: ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Colors.amber)),
                        onPressed: () {
                          //aqui se presiona jsjsjs
                          Navigator.pushAndRemoveUntil(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Noticias()),
                              (route) => false);
                        },
                        child: const Text(
                          "Iniciar sesión",
                          style: TextStyle(color: Colors.black),
                        )))),
          ],
        ),
      ),
    );
  }
}
