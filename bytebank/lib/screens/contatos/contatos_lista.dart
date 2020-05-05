import 'package:bytebank/screens/contatos/formulario_lista.dart';
import 'package:flutter/material.dart';

class ContatosLista extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Contatos"),
      ),
      body: ListView(
        children: <Widget>[
          Card(
            child: ListTile(
              title: Text(
                "Alex",
                style: TextStyle(fontSize: 24),
              ),
              subtitle: Text(
                "100,00",
                style: TextStyle(
                  fontSize: 16.0,
                ),
              ),
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context)
              .push(
                MaterialPageRoute(
                  builder: (context) => ContatoForm(),
                ),
              )
              .then(
                (novoContato) => debugPrint(novoContato.toString()),
              );
        },
        child: Icon(
          Icons.add,
        ),
      ),
    );
  }
}
