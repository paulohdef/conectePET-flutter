import 'package:flutter/material.dart';

class PetsPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body : ListaTransferencia(),
      appBar : AppBar(title: Text('Pets Cadastrados') ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {  },
        child: Icon(Icons.add),
      ),
    );
  }
}


class ListaTransferencia extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: [
        ItemTransferencia(Transferencia("Jorge", "Pastor-Alemão")),
        ItemTransferencia(Transferencia("Romeu", "Yorkshire")),
        ItemTransferencia(Transferencia("Doguinho", "Labrador")),
        ItemTransferencia(Transferencia("Jeremias", "Siamês")),
        SizedBox(
                  height: 50,
                ),
                ElevatedButton(
                  
                  onPressed: (){
                      Navigator.of(context).pushReplacementNamed('/');
                  },
                  child: Text('Sair'),
                  style: ElevatedButton.styleFrom(
                    primary: Color.fromARGB(255, 1, 9, 31),
                  ),
                )
      ],
    );
  }
}

class ItemTransferencia extends StatelessWidget{

  final Transferencia _transferencia;

  ItemTransferencia(this._transferencia);

  @override
  Widget build(BuildContext context) {
    return Card(
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
