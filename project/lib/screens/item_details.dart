import 'package:flutter/material.dart';
import '../models/data.dart';

class ItemDetails extends StatelessWidget {
  static const routeName = '/ItemDetails';
  @override
  Widget build(BuildContext context) {
    final Data items = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      appBar: AppBar(
        title: Text(items.title),
      ),
      body: Column(
        children: <Widget>[
          Image.network(items.imageurl),
          Text(items.title),
          Text('${items.price}'),
          Text(items.description),
        ],
      ),
      
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.shopping_cart,size: 30,),
        onPressed: () {},
      ),
    );
  }
}
