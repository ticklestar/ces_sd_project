import 'package:flutter/material.dart';
import './screens/homepage.dart';
import './screens/fullList.dart';
import './screens/item_details.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        
        primarySwatch: Colors.green,
      ),
      home:HomePage() ,
      routes: {
        FullList.routeName:(ctx)=>FullList(),
        ItemDetails.routeName:(ctx)=>ItemDetails(),
      },
    );
  }
}



