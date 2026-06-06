import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

/*1. Create a variable that stores the converted currency value
  2. Create a function that multiplies the value given by text field with 81
  3. Store the value in the variable that we created 
  4. Display the variable*/

//class CurrencyConverterMaterialPage extends StatefulWidget{
  //State createState() => _CurrencyConverterMaterialPageStateState();
//}

class _CurrencyConverterMaterialPageState extends State{
  @override
  Widget build(BuildContext context){
    return const Scaffold();
  }

}
class CurrencyConverterMaterialPagee extends StatelessWidget{
  const CurrencyConverterMaterialPagee({super.key});
  
  
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
    double result=0;
    final TextEditingController textEditingController = TextEditingController();
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
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: const Text('CURRENCY CONVERTER', style: TextStyle(color: Colors.black),),
        centerTitle: true,
      ),
      body:  Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //int-->string integervalue.toString()
              //string-->int int.parse(stringvalue)
               Text(
                result.toString(),
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
                  controller: textEditingController,
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
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: ElevatedButton(onPressed: () {
                  result= double.parse(textEditingController.text)*81;
                  build(context);
                  //debug, release, profile
                  // if (kDebugMode){
                  //   print('BUTTON CLICKED');
                  // }
                },
                style: ButtonStyle(
                  elevation: MaterialStatePropertyAll(15),
                  backgroundColor: MaterialStatePropertyAll(Colors.black),
                  foregroundColor: MaterialStatePropertyAll(Colors.white),
                  minimumSize: MaterialStatePropertyAll(Size(double.infinity, 50),),
                  shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  )),
                ),
                 child: Text('Convert'),
                 ),
              ),
            ],
          )
      ),
    );
  }
  
}