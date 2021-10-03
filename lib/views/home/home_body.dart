import 'package:charity/data/post.dart';
import 'package:charity/shared_files/dummy_data.dart';
import 'package:charity/shared_files/size_config.dart';
import 'package:flutter/material.dart';

import 'components/search_field.dart';
import 'components/tabbar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with AutomaticKeepAliveClientMixin{
  
  List all = [
    Post(DummyImages.img4, "id", "This is the main title", DummyText.txt1, 15000, 12000, 2000, ["tags"], false),
    Post(DummyImages.img3, "id", "This is the main title", DummyText.txt2, 20000, 15000, 3000, ["tags"], false),
  ];

  List food = [
    Post(DummyImages.img2, "id", "This is the main title", DummyText.txt3, 15000, 12000, 200, ["tags"], false),
    Post(DummyImages.img1, "id", "This is the main title", DummyText.txt4, 18000, 8000, 800, ["tags"], false),
  ];
  List health = [
    Post(DummyImages.img4, "id", "This is the main title", DummyText.txt1, 9000, 1000, 2000, ["tags"], false),
    Post(DummyImages.img3, "id", "This is the main title", DummyText.txt2, 3000, 200, 3000, ["tags"], false),
  ];
  List homeless = [
    Post(DummyImages.img2, "id", "This is the main title", DummyText.txt3, 4000, 3500, 200, ["tags"], false),
    Post(DummyImages.img1, "id", "This is the main title", DummyText.txt4, 1000, 1000, 800, ["tags"], false),
  ];
  
  
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Column(
          children: [
            SizedBox(height: getProportionateScreenHeight(10),),
            Center(child: Home_SearchField()),
            Home_Tabbar(),
            SizedBox(height: getProportionateScreenHeight(10),),
            Expanded(child: Home_TabbarView(all, food, health, homeless))
          ],
        ),
      );
  }

  @override
  bool get wantKeepAlive {
    return true;
  }
}
