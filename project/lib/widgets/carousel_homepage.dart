import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

class CarouselHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      width: double.infinity,
      child: Carousel(
        images: [
          NetworkImage('https://images.unsplash.com/photo-1516223018202-9a22ff8d55f5?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60'),
          NetworkImage('https://images.unsplash.com/photo-1484920274317-87885fcbc504?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1189&q=80'),
          NetworkImage('https://images.unsplash.com/photo-1489834237676-23889bab8c15?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60'),
          NetworkImage('https://images.pexels.com/photos/974400/pexels-photo-974400.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940'),
          NetworkImage('https://images.unsplash.com/photo-1557296691-edb10ad8da28?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60'),
        ],
        dotSize: 4.0,
        
      ),
      
    );
  }
}