import 'dart:ffi';

import 'package:flutter/material.dart';

class CadastroPetPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amberAccent,
      appBar: AppBar(title: Text('Cadastro do Pet')),
      body: FormList(),
    );
  }
}

class FormList extends StatelessWidget {
  final controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SingleChildScrollView(
      child: SizedBox(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              CustomSpacing(height: 20,),
              CustomTextField(label: 'Nome do Pet', icon: Icons.pets),
              CustomSpacing(),
              CustomTextField(label: 'Tipo (Canino ou Feminino) (RADIO)', icon: Icons.pets),
              CustomSpacing(),
              CustomTextField(
                  label: 'Gênero (Macho ou Fêmea) (RADIO)', icon: Icons.pets),
              CustomSpacing(),
              CustomTextField(label: 'Raça ou SRD (TEXTINPUT E RADIO)', icon: Icons.pets),
              CustomSpacing(),
              CustomTextField(label: 'Idade aproximada (Meses)', icon: Icons.pets),
              CustomSpacing(),
              CustomTextField(label: 'Castrado? (RADIO)', icon: Icons.pets),
              CustomSpacing(),
              CustomTextField(label: 'Foto (BUTTONS E PREVIEW)', icon: Icons.pets),
              CustomSpacing(),
              SizedBox(
                width: double.infinity,
                height: 50.0,
                child: ElevatedButton.icon(
                  icon: Icon(Icons.save),
                  onPressed: () {
                    Navigator.of(context).pushReplacementNamed('/');
                  },
                  label: Text('Cadastrar'),
                  style: ElevatedButton.styleFrom(
                    primary: Color.fromARGB(255, 246, 146, 30),
                    shape: StadiumBorder(),
                  ),
                ),
              ),
              CustomSpacing(),
              SizedBox(
                width: double.infinity,
                height: 50.0,
                child: ElevatedButton.icon(
                  onPressed: () {
                    Navigator.of(context).pushReplacementNamed('/');
                  },
                  icon: Icon(Icons.logout),
                  label: Text('Voltar'),
                  style: ElevatedButton.styleFrom(
                    primary: Color.fromARGB(255, 246, 146, 30),
                    shape: StadiumBorder(),
                  ),
                ),
              ),
              CustomSpacing(height: 20,),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomTextField extends StatelessWidget {
  final String label;
  final IconData? icon;
  final bool obscureText;

  const CustomTextField({Key? key, required this.label, this.icon, this.obscureText = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: obscureText,
      decoration: InputDecoration(
        labelText: label,
        labelStyle: TextStyle(color: Colors.black),
        hintText: '$label...',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(25.0)),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(25.0)),
          borderSide:
              BorderSide(color: Color.fromARGB(255, 246, 146, 30), width: 2.0),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(25.0)),
          borderSide:
              BorderSide(color: Color.fromARGB(255, 246, 146, 30), width: 2.0),
        ),
        prefixIcon: icon == null ? null : Icon(icon),
      ),
    );
  }
}

class CustomSpacing extends StatelessWidget {

  final double? height;

  const CustomSpacing({Key? key, this.height}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height == null ? 50.0 : height,
    );
  }
}
