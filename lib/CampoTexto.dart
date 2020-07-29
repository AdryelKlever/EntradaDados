import 'package:flutter/material.dart';

class CampoTexto extends StatefulWidget {
  @override
  _CampoTextoState createState() => _CampoTextoState();
}

class _CampoTextoState extends State<CampoTexto> {

  TextEditingController _textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Entrada de Dados"),
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(32),
            child: TextField(
              //text
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: "Digite um valor"
              ),
              //enabled: true,
              //maxLength: 5,
              style: TextStyle(
                fontSize: 25,
                color: Colors.green,
              ),
              //obscureText: true,
              /*onChanged: (String e){
                print("valor digitado " + e);
              },*/
              onSubmitted: (String e){
                print ("Valor digitado " + e);
              },
              controller: _textEditingController,
            ),
          ),
          RaisedButton(
            child: Text("Savlar"),
            color: Colors.lightGreen,
            onPressed: (){
              print("Valor digitado " + _textEditingController.text);
            },
          )
        ],
      ),
    );
  }
}
