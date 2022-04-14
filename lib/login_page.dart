import 'package:flutter/material.dart';
import 'package:conectepet/home_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({ Key? key }) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  String email = '';
  String password = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Padding(
            padding: const EdgeInsets.all(50.0),
            child: Column( 
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                Container(width: 200, height: 200, child: Image.asset('assets/images/logo.png')),
                Container(height: 20,),
                TextField(
                  onChanged: (text){
                  },
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    labelText: 'Email',
                    labelStyle: TextStyle(
                      color: Colors.black
                    ),
                    border: OutlineInputBorder(),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Color.fromARGB(255, 44, 44, 44), width: 2.0),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Color.fromARGB(255, 0, 0, 0), width: 2.0),
                    ),
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                TextField(
                    onChanged: (text){
                  },
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'Password',
                    labelStyle: TextStyle(
                      color: Colors.black
                    ),
                    border: OutlineInputBorder(),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Color.fromARGB(255, 44, 44, 44), width: 2.0),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Color.fromARGB(255, 0, 0, 0), width: 2.0),
                      ),
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                ElevatedButton(
                  
                  onPressed: (){
                      Navigator.of(context).pushReplacementNamed('/pets');
                  },
                  child: Text('Entrar'),
                  style: ElevatedButton.styleFrom(
                    primary: Color.fromARGB(255, 1, 9, 31),
                  ),
                )
              ],
            ),
          ),
        ),
      )      
    );
  }
}