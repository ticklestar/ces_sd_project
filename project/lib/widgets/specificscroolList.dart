import 'package:flutter/material.dart';
import '../models/data.dart';
import '../dummydata.dart';
import '../screens/item_details.dart';

class SpecificScroolList extends StatelessWidget {
  final String catidd;
  SpecificScroolList(this.catidd);
  @override
  Widget build(BuildContext context) {
    List<Data> items=DummyData.where((i)=>i.catid==catidd).toList();
    return Container(
      height:120,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        itemBuilder: (ctx,i){
          return SpecificItem(items[i].imageurl, items[i].title,items[i]);
        },
    
      ),
      
    );
  }
}
 
class SpecificItem extends StatelessWidget{
  final String imageurl;
  final String title;
  Data item;
  SpecificItem(this.imageurl,this.title,this.item);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child:InkWell(
        onTap: () {
          Navigator.of(context).pushNamed(ItemDetails.routeName,arguments: item);
        },
        child: Container(
          width:150,
          child: ListTile(
            title: Image.network(imageurl,height: 80,width: 100,fit: BoxFit.fill,),
            subtitle: Text(title,textAlign: TextAlign.center,),
          ),
        ),
      ),
    );
  }
}