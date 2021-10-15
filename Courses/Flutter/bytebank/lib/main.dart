import 'package:flutter/material.dart';

void main() => runApp(BytebankApp());

class BytebankApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: FormularioTransferencia(),
      ),
    );
  }
}

class FormularioTransferencia extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('Criando Transferência'),
      ),
      body: Column(
        children: <Widget>[
          const Padding(
            padding: EdgeInsets.fromLTRB(16.0, 8.0, 16.0, 8.0),
            child: TextField(
              style: TextStyle(fontSize: 24.0),
              decoration: InputDecoration(
                  labelText: 'Número da Conta',
                  hintText: '0000'
              ),
              keyboardType: TextInputType.number,
            ),
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(16.0, 8.0, 16.0, 8.0),
            child: TextField(
              style: TextStyle(fontSize: 24.0),
              decoration: InputDecoration(
                  icon: Icon(Icons.monetization_on),
                  labelText: 'Valor',
                  hintText: '0.00'
              ),
              keyboardType: TextInputType.number,
            ),
          ),
          ElevatedButton(onPressed: () {}, child: Text('Confirmar'))
        ],
      ),
    );
  }
}

class ListaTransferencias extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Transferências'),
        ),
        body: Column(
          children: <Widget>[
            ItemTransferencia(Transferencia(100.0, 1000)),
            ItemTransferencia(Transferencia(200.0, 1001)),
            ItemTransferencia(Transferencia(300.0, 3000)),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.add),
        ));
  }
}

class ItemTransferencia extends StatelessWidget {
  final Transferencia _transferencia;

  ItemTransferencia(this._transferencia);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Icon(Icons.monetization_on),
        title: Text(_transferencia.valor.toString()),
        subtitle: Text(_transferencia.numConta.toString()),
      ),
    );
  }
}

class Transferencia {
  final double valor;
  final int numConta;

  Transferencia(this.valor, this.numConta);
}
