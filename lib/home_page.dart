import 'package:flutter/material.dart';
import 'package:conectepet/app_controller.dart';

class HomePage extends StatefulWidget{
  @override
  State<HomePage> createState() {
    // TODO: implement createState
    return HomePageState();
  }
}

class HomePageState extends State<HomePage>{

  int counter = 0;

  bool isDarkTheme = false;

  @override
  Widget build(BuildContext context) {
    return (
      Scaffold(
        appBar: AppBar(
          title: Text('Home Page'),
          actions: [
            CustomSwitch(),
          ],
        ),
        body: Center(
            child: Container(
              width: double.infinity,
              height: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Contador: $counter'),
                  CustomSwitch(),
                ],
              ),
            ),
          ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: (){
              setState((){
                counter++;
              });
              print(counter);
          },
        )
        ,
      )
    );
  }
}

class CustomSwitch extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return 
      Switch(value: AppController.instance.isDarkTheme, onChanged: (value){
              AppController.instance.changeTheme();
            },);
  }
}