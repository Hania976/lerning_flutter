


import 'package:flutter/material.dart';

void main(){
runApp(MaterialApp(
  home: Scaffold(
    appBar: AppBar(
      title: Text('My CV'),
    ),
    body: Column(crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Center(child: Image.network("https://static.vecteezy.com/system/resources/thumbnails/036/151/780/small_2x/illustration-cartoon-of-a-cute-girl-standing-and-smiling-while-dressed-in-colorful-and-casual-clothes-vector.jpg", height:100 ,)
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.person, color: Colors.blueGrey),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('My name is Hania',style:TextStyle(color:Colors.blueGrey,)),
            ),
          ],
        ),
        Row(children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.email, color: Colors.blueAccent),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('Email:',style:TextStyle(color:Colors.blueAccent)),
          ),
          Padding(
            padding: const EdgeInsets.all(1.0),
            child: Text('haniaayoub8@gmail.com',style:TextStyle(color:Colors.blueAccent)),
          ),
          
        ],),
        Row(children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.phone,color:Colors.brown),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('Phone:',style:TextStyle(color:Colors.brown)),
          ),
          Text('0783452674',style:TextStyle(color:Colors.brown)),
        ],),
        Row(children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.location_history,color:Colors.orange),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('address:',style:TextStyle(color:const Color.fromARGB(255, 84, 94, 2))),
          ),
          Text('beni ourttilane',style:TextStyle(color:Colors.amber))
        ],)
      ],
    )
    ,
  ),
));
}