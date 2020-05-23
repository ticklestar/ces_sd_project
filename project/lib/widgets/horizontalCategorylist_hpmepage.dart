import 'package:flutter/material.dart';

import '../dummydata.dart';
import '../screens/fullList.dart';


class HorizontalCategoryHomePageList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: DummyDataCategory.length,
        itemBuilder: (ctx,i)=>CategoryItem(DummyDataCategory[i].imageurl, DummyDataCategory[i].title,DummyDataCategory[i].id),
      ),
    );
  }
}

class CategoryItem extends StatelessWidget {
  final String imageurl;
  final String title;
  final String catid;
  CategoryItem(this.imageurl,this.title,this.catid);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child:InkWell(
        onTap: () {
          Navigator.of(context).pushNamed(FullList.routeName,arguments: catid);
        },
        child: Container(
          width:100,
          child: ListTile(
            title: Image.network(imageurl,height: 80,width: 100,fit: BoxFit.fill,),
            subtitle: Text(title,textAlign: TextAlign.center,softWrap: true,overflow: TextOverflow.fade,),
          ),
        ),
      ),
    );
  }
}