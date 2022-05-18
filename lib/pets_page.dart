import 'package:flutter/material.dart';

class PetsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      body: ListaTransferencia(),
      appBar: AppBar(
        title: Text('Pets Cadastrados'),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.of(context).pushReplacementNamed('/');
              },
              icon: Icon(Icons.logout))
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).pushReplacementNamed('/cadastroPet');
        },
        child: Icon(Icons.add),
      ),
    );
  }
}

class ListaTransferencia extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SingleChildScrollView(
      child: Column(
        children: [
          ItemTransferencia(Transferencia("Jorge", "Pastor Alemão")),
          ItemTransferencia(Transferencia("Romeu", "Yorkshire")),
          ItemTransferencia(Transferencia("Doguinho", "Labrador")),
          ItemTransferencia(Transferencia("Thor", "Bull Terrier")),
          ItemTransferencia(Transferencia("Bob", "Pug")),
          ItemTransferencia(Transferencia("Fred", "Poodle")),
          ItemTransferencia(Transferencia("Billy", "Chihuaha")),
          ItemTransferencia(Transferencia("Marley", "Boxer")),
          ItemTransferencia(Transferencia("Pingo", "Husky Siberiano")),
          ItemTransferencia(Transferencia("Bidu", "Golden Retriever")),
          SizedBox(
            height: 20,
          ),
          SizedBox(
            width: double.infinity,
            height: 50.0,
            child: ElevatedButton.icon(
              onPressed: () {
                Navigator.of(context).pushReplacementNamed('/');
              },
              icon: Icon(Icons.logout),
              label: Text('Sair'),
              style: ElevatedButton.styleFrom(
                primary: Color.fromARGB(255, 246, 146, 30),
                shape: StadiumBorder(),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}

class ItemTransferencia extends StatelessWidget {
  final Transferencia _transferencia;

  ItemTransferencia(this._transferencia);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: Colors.transparent,
      child: ListTile(
        leading: Icon(Icons.pets),
        title: Text(_transferencia.nome),
        subtitle: Text(_transferencia.raca),
      ),
    );
  }
}

class Transferencia {
  final String nome;
  final String raca;

  Transferencia(this.nome, this.raca);
}
