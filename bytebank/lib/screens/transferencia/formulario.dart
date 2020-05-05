

import 'package:bytebank/components/editor.dart';
import 'package:bytebank/models/transferencia.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../main.dart';

const _tituloAppBar = "Criando transferência";
const _rotuloCampoValor = "Valor";
const _rotuloCampoNumeroConta = "Número da Conta";
const _dicaCampoValor = "0.00";
const _dicaCampoNumeroConta = "0000-0";

const _textBotaoConfirmar = "Confirmar";

class FormularioTransferencia extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return FormularioTransferenciaState();
  }
}

class FormularioTransferenciaState extends State<FormularioTransferencia>{
  final TextEditingController _controladorCampoNumeroConta =
  TextEditingController();
  final TextEditingController _controladorCampoValor = TextEditingController();

  void _criaTransferencia(BuildContext context) {

    final int numeroConta = int.tryParse(_controladorCampoNumeroConta.text);
    final double valor = double.tryParse(_controladorCampoValor.text);
    if(numeroConta != null && valor != null) {
      final transferenciaCriada = Transferencia(valor, numeroConta);
      Navigator.pop(context, transferenciaCriada);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(_tituloAppBar),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Editor(
                _controladorCampoNumeroConta,
                _rotuloCampoNumeroConta,
                _dicaCampoNumeroConta,
                icone: Icons.account_balance_wallet,
              ),
              Editor(
                _controladorCampoValor,
                _rotuloCampoValor,
                _dicaCampoValor,
                icone: Icons.monetization_on,
              ),
              RaisedButton(
                onPressed: () => _criaTransferencia(context),
                child: Text(_textBotaoConfirmar),
              ),
            ],
          ),
        ));
  }
}