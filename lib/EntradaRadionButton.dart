import 'package:flutter/material.dart';

class EntradaRadionButton extends StatefulWidget {
  @override
  _EntradaRadionButtonState createState() => _EntradaRadionButtonState();
}

class _EntradaRadionButtonState extends State<EntradaRadionButton> {

  String _escolhaUsuario;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Entrada de Dados"),
      ),
      body: Container(
        child: Column(
          children: <Widget>[

            RadioListTile(
              title: Text("Masculino"),
              value: "m",
              groupValue: _escolhaUsuario,
              onChanged: (String escolha){
                setState(() {
                  setState(() {
                    _escolhaUsuario = escolha;
                  });
                });
              },
            ),
            RadioListTile(
              title: Text("Feminino"),
              value: "f",
              groupValue: _escolhaUsuario,
              onChanged: (String escolha){
                setState(() {
                  setState(() {
                    _escolhaUsuario = escolha;
                  });
                });
              },
            ),

            RaisedButton(
              child: Text(
                "Salvar",
                style: TextStyle(
                    fontSize: 20
                ),
              ),
              onPressed: (){
                print("Resultado: " + _escolhaUsuario);
              },
            )

            /*
            Text("Masculino"),
            Radio(
              value: "m",
              groupValue: _escolhaUsuario,
              onChanged: (String escolha){
                setState(() {
                  setState(() {
                    _escolhaUsuario = escolha;
                  });
                  print("Resultado: " + escolha);
                });
              },
            ),
            Text("Feminino"),
            Radio(
              value: "f",
              groupValue: _escolhaUsuario,
              onChanged: (String escolha){
                setState(() {
                  _escolhaUsuario = escolha;
                });
                print("Resultado: " + escolha);
              },
            ),
            */

          ],
        ),
      ),
    );
  }
}
