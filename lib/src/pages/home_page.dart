import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomePage extends StatelessWidget{

  final TextStyle estiloTexto=new TextStyle(fontSize: 25);
  final int conteo=10;

  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      appBar:AppBar(
        title: Text('Titulo'),
        centerTitle:true ,
        elevation:0,
      ) ,
      body: Center(
        child: Column(
          children: <Widget>[
            Text('Numero de clicks',style:estiloTexto ,),
            Text('$conteo',style:estiloTexto)
          ],
          mainAxisAlignment: MainAxisAlignment.center
        )
      ),
      floatingActionButton:FloatingActionButton(
        onPressed:(){
         // conteo++;
        },
        child:Icon(Icons.add) ,
      ) ,
    );
  }

}