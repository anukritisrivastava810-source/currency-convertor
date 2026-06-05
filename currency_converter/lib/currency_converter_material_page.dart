import 'package:flutter/foundation.dart';
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

  //decoration
  //  decoration: InputDecoration(
  //                 label: Text('Please Enter Amount In USD', style: TextStyle(
  //                   color: Colors.white,)
  //                 ),
  //               ),
  Widget build(BuildContext context){
    final border = OutlineInputBorder(
      //Color(0xAARRGGBB)
      borderSide: const BorderSide(
        width: 2.0,
        style: BorderStyle.solid,
      ),
      borderRadius: BorderRadius.all(Radius.circular(5),),
   );
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body:  Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                '0',
                style: const TextStyle(
                  fontSize: 55,
                  fontWeight: FontWeight.bold,//bold--w700, normal--w400
                  color: Color.fromARGB(255, 255, 255, 255)
                ),
              ),
              // Container(
              //   padding: const EdgeInsets.all(10),
              //   margin: const EdgeInsets.all(10),
              //   color: Colors.black,
              //   child: const Text(
              //     '0',
              //     style: const TextStyle(
              //       fontSize: 55,
              //       fontWeight: FontWeight.bold,//bold--w700, normal--w400
              //       color: Color.fromARGB(255, 255, 255, 255)
              //     ),
              //   ),
              // ),
              //padding== select TextField-->Ctrl+Shift+R-->wrap with padding
              //container
              Padding(
                padding: const EdgeInsets.all(10),
                child: TextField(
                  style: TextStyle(
                    color: Colors.black //change color of typed text
                  ),
                  decoration: InputDecoration(
                    hintText: 'Please Enter Amount In USD',
                    hintStyle: TextStyle(
                      color: Colors.black,
                    ),
                    prefixIcon: const Icon(Icons.monetization_on_outlined),
                    prefixIconColor: Colors.black,// sufix also present
                    filled: true,
                    fillColor: Colors.white,
                    focusedBorder: border,
                    enabledBorder: border,
                  ),
                  keyboardType: const TextInputType.numberWithOptions(
                    decimal: true,
                  ),
                ),
              ),
              //BUTTON(2 types)---> 1. raised 2. appears like a text
              TextButton(onPressed: () {
                //debug, release, profile
                if (kDebugMode){
                  print('BUTTON CLICKED');
                }
              },
              style: ButtonStyle(),
               child: Text('Convert'),
               ),
            ],
          )
      ),
    );
  }
  
}