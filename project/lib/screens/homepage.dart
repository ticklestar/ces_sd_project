import 'package:flutter/material.dart';

//my imports
import '../widgets/carousel_homepage.dart';
import '../widgets/horizontalCategorylist_hpmepage.dart';
import '../widgets/specificscroolList.dart';
import './fullList.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'CES',
        ),
      ),
      body: ListView(
        children: <Widget>[
          CarouselHomePage(),
          //AddHeading('Categories'),
          //HorizontalCategoryHomePageList(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              AddHeading('Courses'),
              FlatButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed(FullList.routeName,arguments:'p1');
                  },
                  child: Text(
                    'See all',
                    style: TextStyle(color: Colors.grey),
                  )),
            ],
          ),
          SpecificScroolList('p1'),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              AddHeading('Workshops'),
              FlatButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed(FullList.routeName,arguments:'p2');
                  },
                  child: Text(
                    'See all',
                    style: TextStyle(color: Colors.grey),
                  )),
            ],
          ),
          SpecificScroolList('p2'),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              AddHeading('Conferences'),
              FlatButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed(FullList.routeName,arguments:'p3');
                  },
                  child: Text(
                    'See all',
                    style: TextStyle(color: Colors.grey),
                  )),
            ],
          ),
          SpecificScroolList('p3'),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Theme.of(context).primaryColor,
        selectedItemColor:Colors.white,
        unselectedItemColor:Colors.black,
        showUnselectedLabels: false,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home,size: 30,),
            title: Text('Home'),
          ),
           BottomNavigationBarItem(
            icon: Icon(Icons.bookmark,size: 30,),
            title: Text('My cart'),
          ),
           BottomNavigationBarItem(
            icon: Icon(Icons.account_circle,size: 30,),
            title: Text('Profile'),
          ),
        ],
      ),
    );
  }
}

class AddHeading extends StatelessWidget {
  final String heading;
  AddHeading(this.heading);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20),
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Text(
        heading,
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
      ),
    );
  }
}
