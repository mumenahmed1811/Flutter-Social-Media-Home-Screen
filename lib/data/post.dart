
import 'package:flutter/foundation.dart';

class Post{
  String image;
  String title;
  String id;
  String body;
  int goal;
  int done;
  int likes;
  bool liked = false;
  List tags;


  Post(
    this.image,
    this.id,
    this.title,
    this.body,
    this.goal,
    this.done,
    this.likes,
    this.tags,
    this.liked
  );

}