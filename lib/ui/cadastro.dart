import 'package:flutter/material.dart';

class Cadastro extends StatefulWidget {
  @override
  _CadastroState createState() => _CadastroState();
}

class _CadastroState extends State<Cadastro> {
  final TextEditingController _usuarioController = new TextEditingController();
  final TextEditingController _senhaController = new TextEditingController();
  String _bemvindo = "";
  String _bem = "";

  void _mostraBemVindo() {
    setState(() {
      if (_usuarioController.text.isNotEmpty &&
          _senhaController.text.isNotEmpty) {
        _bemvindo = "Bem vindo ${_usuarioController.text}";
      }
    });
  }

  void _cancelar() {
    setState(() {
      _usuarioController.clear();
      _senhaController.clear();
      _bemvindo = "";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cadastro"),
        backgroundColor: Colors.amber,
      ),
      backgroundColor: Colors.white,
      body: Container(
        alignment: Alignment.topCenter,
        child: ListView(
          children: <Widget>[
            Image.asset(
              "assets/face.png",
              width: 39.0,
              height: 39.0,
              color: Colors.orangeAccent,
            ),
            Container(
              width: double.infinity,
              color: Colors.white,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: TextField(
                      controller: _usuarioController,
                      decoration: InputDecoration(
                        hintText: "Nome",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(4.5)),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: TextField(
                      controller: _senhaController,
                      decoration: InputDecoration(
                        hintText: "Senha",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(4.5)),
                      ),
                      obscureText: true,
                    ),
                  ),
                  Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Container(
//                          margin: const EdgeInsets.only(left: 38.0) ,
                          child: RaisedButton(
                            onPressed: _mostraBemVindo,
                            color: Colors.white,
                            child: Text("Acessar"),
                            textColor: Colors.orange,
                          ),
                        ),
                        Container(
//                          margin: const EdgeInsets.only(left: 38.0) ,
                          child: RaisedButton(
                            onPressed: _cancelar,
                            color: Colors.white,
                            child: Text("Cancelar"),
                            textColor: Colors.orange,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "$_bemvindo",
                    style: TextStyle(color: Colors.blueAccent),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
