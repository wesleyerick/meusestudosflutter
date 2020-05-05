import 'package:bytebank/models/contatos.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ContatoForm extends StatefulWidget {
  @override
  _ContatoFormState createState() => _ContatoFormState();
}

class _ContatoFormState extends State<ContatoForm> {
  final TextEditingController _nameController = TextEditingController();

  final TextEditingController _accountNumberController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Novo Contato"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: TextField(
                controller: _nameController,
                decoration: InputDecoration(
                  labelText: "Nome Completo",
                ),
                style: TextStyle(fontSize: 24.0),
              ),
            ),
            TextField(
              controller: _accountNumberController,
              decoration: InputDecoration(
                labelText: "Número da Conta",
              ),
              style: TextStyle(
                fontSize: 24.0,
              ),
              keyboardType: TextInputType.number,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16.0),
              child: SizedBox(
                width: double.maxFinite, // = match content ou match constraint
                child: RaisedButton(
                    child: Text("Confirmar"),
                    onPressed: () {
                      final String name = _nameController.text;
                      final int accountNumber =
                          int.tryParse(_accountNumberController.text);
                      final Contato novoContato = Contato(name, accountNumber);
                      Navigator.pop(context, novoContato);
                    }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
