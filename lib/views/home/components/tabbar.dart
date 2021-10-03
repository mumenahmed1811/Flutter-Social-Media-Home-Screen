
import 'package:charity/shared_files/size_config.dart';
import 'package:charity/views/home/components/post_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home_Tabbar extends StatelessWidget {
  const Home_Tabbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: getProportionateScreenHeight(50),
      child: TabBar(
        labelColor: Colors.pinkAccent,
        unselectedLabelColor: Color.fromRGBO(143,144,165, 1),
        indicatorColor: Colors.transparent,
        tabs: [
          Text("All", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
          Text("Homeless", style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
          Text("Food", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
          Text("Health", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
        ],

      ),
    );
  }
}
class Home_TabbarView extends StatefulWidget {
  List all;
  List homeless;
  List food;
  List health;
  late List myLists;

  Home_TabbarView(this.all, this.homeless, this.food, this.health){
    myLists = [all, homeless, food, health];
  }

  @override
  State<Home_TabbarView> createState() => _Home_TabbarViewState();
}

class _Home_TabbarViewState extends State<Home_TabbarView> {
  @override
  Widget build(BuildContext context) {
    return TabBarView(
        children: [
          for(var i = 0; i < 4; i++)
            ListView.builder(
                //key: PageStorageKey("key" + i.toString()),
                itemCount: widget.myLists[i].length,
                itemBuilder: (context, index){
                    return Home_PostScreen(widget.myLists[i][index]) ;
                }
            )
        ]
    );
  }
}
