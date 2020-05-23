import 'package:flutter/foundation.dart';

class Data {
  final String id;
  final String catid;
  final String title;
  final double price;
  final String description;
  final String imageurl;

   const Data({
    @required this.id,
    @required this.catid,
    @required this.title,
    @required this.description,
    @required this.price,
    @required this.imageurl,
  });
}
