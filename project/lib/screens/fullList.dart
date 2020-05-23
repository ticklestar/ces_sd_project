import 'package:flutter/material.dart';
import '../dummydata.dart';
import '../models/data.dart';
import './item_details.dart';

class FullList extends StatelessWidget {
  static const routeName='/FullListCategory';
  
  
  
  @override
  Widget build(BuildContext context) {
    final catidd=ModalRoute.of(context).settings.arguments;
    List<Data> items = DummyData.where((i) => i.catid == catidd).toList();
    return Scaffold(
        appBar: AppBar(title: Text(catidd),),
        body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (ctx, i) => InkWell(
            onTap: () {
              Navigator.of(context).pushNamed(ItemDetails.routeName,arguments: items[i]);
            },
            child: Card(
            elevation: 5,
            child: ListTile(
              leading: Image.network(items[i].imageurl,),
              title: Text(items[i].title),
              subtitle: Text('${items[i].price}'),
              trailing: IconButton(icon: Icon(Icons.add_shopping_cart), onPressed:(){}),
            ),
          ),
        ),
      ),
    );
  }
}
