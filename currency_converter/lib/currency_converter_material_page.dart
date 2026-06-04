import 'package:flutter/material.dart';

class CurrencyConverterMaterialPage extends StatelessWidget{
  const CurrencyConverterMaterialPage({super.key});
  @override
  //BuildContext-- tells u location of particular widget in widget tree
  //here MaterialApp-->Scaffold-->text-->center

  //Scaffold Properties--->> 

  //center(sets alignment to center)
  // body:  Center(
  //         child: Column(
  //           
  //           children: [
  //             Text('0'),
  //           ],
  //         )
  //     ),


  //ColoredBox, Column
  // body:  ColoredBox(
  //       color: Color.fromRGBO(255, 0, 0, 1),
  //       child: Column(
  //         mainAxisAlignment: MainAxisAlignment.center, //mainAxisAlignment--vertical axix
  //         crossAxisAlignment: CrossAxisAlignment.center, //crossAxisAlignment--horizontal axis
  //         children: [
  //           Text('0'),
  //         ],
  //       )
  //     ),
  Widget build(BuildContext context){
    return const Scaffold(
      backgroundColor: Colors.blueGrey,
      body:  Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '0',
                style: TextStyle(
                  fontSize: 55,
                  fontWeight: FontWeight.bold,//bold--w700, normal--w400
                  color: Color.fromARGB(255, 255, 255, 255)
                ),
              ),
              TextField(
                style: TextStyle(
                  color: Colors.white //change color of typed text
                ),
                decoration: InputDecoration(
                  
                ),
              ),
            ],
          )
      ),
    );
  }
  
}