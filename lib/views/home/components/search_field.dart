import 'package:charity/shared_files/size_config.dart';
import 'package:flutter/material.dart';
class Home_SearchField extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      width: SizeConfig.screenWidth * 0.95,
      decoration: BoxDecoration(
        color: Color.fromRGBO(240,249,254, 1),
        borderRadius: BorderRadius.circular(15),
      ),
      child: TextField(
        onChanged: (value) => print(value),
        decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(
                horizontal: getProportionateScreenWidth(20),
                vertical: getProportionateScreenWidth(9)),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(80)),
                borderSide: BorderSide(
                  color: Colors.transparent,
                )
            ),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(80)),
                borderSide: BorderSide.none
            ),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(80)),
                borderSide: BorderSide(
                  color: Colors.transparent,
                )
            ),

            hintText: "Search Request",
            suffixIcon: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.pinkAccent
              ),
              child: Icon(
                Icons.search,
                color: Colors.white,
              ),

            )
        ),
      ),
    );
  }
}
