import 'package:flutter/material.dart';

class ScreenHome extends StatefulWidget {
   ScreenHome({super.key});

  @override
  State<ScreenHome> createState() => _ScreenHomeState();
}

class _ScreenHomeState extends State<ScreenHome> {
int a = 2;

void add() {
    a = a + 1;
    setState(() {
      
    });
  }
  void remove() {
    a = a - 1;
    setState(() {
      
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton:FloatingActionButton(onPressed:(){
        add();
        print(a);
      },child: Icon(Icons.add),) ,
      appBar:AppBar(
      title: Text('counter'),

    ),
    body:
    Center( child: Row(mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CircleAvatar(child: IconButton(onPressed:  (){ add(); }, icon: Icon(Icons.add)),backgroundColor: Colors.green,),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Text(a.toString(),style:TextStyle(fontSize:40 )),
        ),
        CircleAvatar (child: IconButton(onPressed:  (){ remove();}, icon: Icon(Icons.remove)),backgroundColor: Colors.red,),
      ],
    ),) ,);
  }
}