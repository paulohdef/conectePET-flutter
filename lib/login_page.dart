import 'package:flutter/material.dart';
import 'package:conectepet/home_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String email = '';
  String password = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.amberAccent,
        body: SingleChildScrollView(
          child: SizedBox(
            child: Padding(
              padding: const EdgeInsets.all(50.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("ConectePET", style: TextStyle(fontSize: 25.0)),
                  Container(
                      width: 200,
                      height: 180,
                      child: Image.asset('assets/images/logopng.png')),
                  Container(
                    height: 20,
                  ),
                  TextField(
                    onChanged: (text) {},
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      labelText: 'Email',
                      labelStyle: TextStyle(color: Colors.black),
                      border: OutlineInputBorder(),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(25.0)),
                        borderSide: BorderSide(
                            color: Color.fromARGB(255, 246, 146, 30),
                            width: 2.0),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(25.0)),
                        borderSide: BorderSide(
                            color: Color.fromARGB(255, 246, 146, 30),
                            width: 2.0),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  TextField(
                    onChanged: (text) {},
                    obscureText: true,
                    decoration: InputDecoration(
                      labelText: 'Password',
                      labelStyle: TextStyle(color: Colors.black),
                      border: OutlineInputBorder(),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(25.0)),
                        borderSide: BorderSide(
                            color: Color.fromARGB(255, 246, 146, 30),
                            width: 2.0),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(25.0)),
                        borderSide: BorderSide(
                            color: Color.fromARGB(255, 246, 146, 30),
                            width: 2.0),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  SizedBox(
                    width: double.infinity,
                    height: 50.0,
                    child: ElevatedButton.icon(
                      onPressed: () {
                        Navigator.of(context).pushReplacementNamed('/pets');
                      },
                      icon: Icon(Icons.login),
                      label: Text('Entrar'),
                      style: ElevatedButton.styleFrom(
                        primary: Color.fromARGB(255, 246, 146, 30),
                        shape: StadiumBorder(),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 50,
                    width: 120,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 130,
                        height: 50.0,
                        child: ElevatedButton.icon(
                          onPressed: () {
                            Navigator.of(context).pushReplacementNamed('/cadastro');
                          },
                          icon: Icon(Icons.account_circle_outlined),
                          label: Text('Cadastrar'),
                          style: ElevatedButton.styleFrom(
                            primary: Color.fromARGB(255, 246, 146, 30),
                            shape: StadiumBorder(),
                            ),
                          
                      
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
