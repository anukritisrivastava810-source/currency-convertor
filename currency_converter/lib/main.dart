import 'package:currency_converter/currency_converter_material_page.dart';
import 'package:flutter/material.dart';//for runApp(app),certain widgets and ui components

void main(){
  //text widget
  // runApp(Text('Hello,World!!!!', textDirection: TextDirection.ltr));//ltr--left up, rtl--right up
  runApp(const MyApp());
}
// Types of widgets
// 1. StatelessWidget-- state immutable
// 2. StatefulWidget-- state mutable
// 3. InheritedWidget
//create a custom widget

//State- any data that will determine how your widget should look like how it should be rendered or how it should behave

// Types of Design
// 1. Material Design(by google)
// 2. Cuertino Design(by apple)

//Scaffold--required to wrap the text, give access to header, footer and all
//Scaffold Properties--- center(sets alignment to center),
class MyApp extends StatelessWidget{
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp( 
      home: CurrencyConverterMaterialPage(),
    );
  }
}