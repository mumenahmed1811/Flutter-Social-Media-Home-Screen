import 'package:charity/data/post.dart';
import 'package:charity/shared_files/size_config.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class Home_PostScreen extends StatefulWidget {

  Post post;
  Home_PostScreen(@required this.post);

  @override
  _Home_PostScreenState createState() => _Home_PostScreenState(post);
}

class _Home_PostScreenState extends State<Home_PostScreen> with AutomaticKeepAliveClientMixin {

  Post post;

  late Color like_btn_color;

  _Home_PostScreenState(@required this.post){
    like_btn_color =  post.liked? Colors.pinkAccent : Color.fromRGBO(143,144,165, 1);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(getProportionateScreenHeight(12)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network(
              post.image,
              height: getProportionateScreenHeight(250),
              width: SizeConfig.screenWidth,
              fit: BoxFit.fill,
            ),
          SizedBox(height: getProportionateScreenHeight(10),),
          Text(
            post.title,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15, color: Colors.black),
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
          ),
          SizedBox(height: getProportionateScreenHeight(10),),

          Text(
            post.body,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12, color: Colors.grey),
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
          ),
          SizedBox(height: getProportionateScreenHeight(10),),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  IconButton(
                    onPressed: (){
                      setState(() {
                        if(post.liked == false){
                          post.liked = true;
                          like_btn_color = Colors.pinkAccent;
                          }
                        else if(post.liked == true){
                            post.liked = false;
                            like_btn_color = Color.fromRGBO(143,144,165, 1);
                          }
                        });
                      },

                    icon: FaIcon(FontAwesomeIcons.solidThumbsUp),
                    color: like_btn_color
                  ),
                  SizedBox(width: getProportionateScreenWidth(5),),
                  Text(post.likes.toString(), style: TextStyle(fontSize: 15, color: Color.fromRGBO(143,144,165, 1)),),
                  SizedBox(width: getProportionateScreenWidth(10),),
                  IconButton(
                    onPressed: (){},
                    icon: FaIcon(FontAwesomeIcons.share, ),
                    color: Color.fromRGBO(143,144,165, 1),
                  ),
                  SizedBox(width: getProportionateScreenWidth(5),),
                  Text("Share", style: TextStyle(fontSize: 15, color: Color.fromRGBO(143,144,165, 1)),),
                ],
              ),
              Container(
                width: SizeConfig.screenWidth * 0.25,
                height: getProportionateScreenHeight(35),
                child: TextButton(
                  onPressed: (){},
                  child: Text("Denote", style: TextStyle(color: Colors.white, fontSize: 15)),
                  style: TextButton.styleFrom(
                    primary: Colors.white,
                    backgroundColor: Colors.pinkAccent,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)
                    )

                  )

                ),
              ),
            ],
          )

        ],
      ),
    );
  }

  @override
  bool get wantKeepAlive {
    return true;
  }
}

// Column(
//   children: [
//     Row(
//       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//       children: [
//         Text("Donated: "+ post.done.toString() + "\$", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13, color: Colors.grey)),
//         Text("Goal: "+ post.goal.toString() + "\$", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13, color: Colors.black))
//       ],
//     ),
//     Container(
//       width: SizeConfig.screenWidth,
//       height: getProportionateScreenHeight(8),
//       color: Color.fromRGBO(233,234,236,1),
//
//       child: Container(
//         width: SizeConfig.screenWidth *post.done/post.goal,
//         color: Colors.pinkAccent,
//       ),
//     )
//   ],
// ),
// SizedBox(height: getProportionateScreenHeight(10),),