import 'package:flutter/material.dart';

class ContadorPage extends StatefulWidget{

  @override
  createState()=>_ContadorPageState();

}


class _ContadorPageState extends State<ContadorPage>{

  final TextStyle _estiloTexto=new TextStyle(fontSize: 25);
   int _conteo=0;

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
            Text('Numero de clicks',style:_estiloTexto ,),
            Text('$_conteo',style:_estiloTexto)
          ],
          mainAxisAlignment: MainAxisAlignment.center
        )
      ),
      floatingActionButton:_crearBotones()
    );
  }



  Widget _crearBotones(){
    
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        SizedBox(width: 30,),
        FloatingActionButton(child: Icon(Icons.exposure_zero), onPressed: ()=>_cambiarContador('resetear'),),
        Expanded(child: SizedBox(width: 5.0)),
        FloatingActionButton(child: Icon(Icons.remove), onPressed:()=>_cambiarContador('disminuir'),),
        SizedBox(width: 5.0),
        FloatingActionButton(child: Icon(Icons.add), onPressed:()=>_cambiarContador('aumentar'),),
      ],
    ); 
    
  }

  void _cambiarContador(String tipo){
    switch (tipo) {
      case 'aumentar':
          _conteo++;
        break;
      case 'disminuir':
          _conteo--;
        break;
      case 'resetear':
          _conteo=0;
        break;
      default:
          _conteo=0;
    }
    setState(() {
      
    });
  }

}