import 'package:charity/shared_files/size_config.dart';
import 'package:flutter/material.dart';

class MainHeader extends StatelessWidget {
  const MainHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: AppBar().preferredSize.height,
      child: Padding(
        padding: EdgeInsets.only(
            left: getProportionateScreenWidth(8),
            right: getProportionateScreenWidth(8)
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                  Image(
                    image: NetworkImage("https://icon-library.com/images/charity-icon-png/charity-icon-png-12.jpg"),
                    width: 50,
                    height: AppBar().preferredSize.height,
                  ),
                Padding(
                  padding: EdgeInsets.only(
                      top: getProportionateScreenHeight(5),
                      left: getProportionateScreenWidth(5)
                  ),
                  child: Column(
                    children: [
                      Text("Charity", style: TextStyle(fontSize: 25, color: Colors.pinkAccent),),
                      Text("Any Text Here", style: TextStyle(fontSize: 5),)
                    ],
                  ),
                )
              ],
            ),
            InkWell(
              child: Icon(
                Icons.notification_important_outlined,
                size: 25,
              ),
            )
          ],
        ),
      ),
    );
  }
}
