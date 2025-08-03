import 'package:flutter/material.dart';
import 'package:hania/view/result.dart';

class ScreenHome extends StatefulWidget {
   ScreenHome({super.key});

  @override
  State<ScreenHome> createState() => _ScreenHomeState();
}

class _ScreenHomeState extends State<ScreenHome> {
int a = 2;
String name ="hania   ";
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
      floatingActionButton:FloatingActionButton(
        
        onPressed:(){
        Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => ScreenResult(result:a, name: name,)),
  );
      },child: Icon(Icons.file_download_done_outlined),) ,
      appBar:AppBar(
      title: Text('counter'),

    ),
    body:
    Center( child: Column(mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(child: IconButton(onPressed:  (){ add(); }, icon: Icon(Icons.add)),backgroundColor: Colors.green,),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(name.trim(),style:TextStyle(fontSize:40 )),
            ),
            CircleAvatar (child: IconButton(onPressed:  (){ remove();}, icon: Icon(Icons.remove)),backgroundColor: Colors.red,),
          ],
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(decoration: InputDecoration(border: OutlineInputBorder()) ,onChanged: (value) {
name =value;
          },),

        ),
        InkWell(onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => ScreenResult(result: a, name: name)),
          );
        },
          child: Expanded(
            child: Container(
              
              decoration: BoxDecoration(
                color: Colors.blueAccent,
                borderRadius: BorderRadius.circular(20),
              ),
              child:Center(child: Text('Go to result',style:TextStyle(color:const Color.fromARGB(255, 183, 210, 232))))
            ),
          ),
        )
    ]),) ,);
  }
}