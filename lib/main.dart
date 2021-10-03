import 'package:charity/shared_files/size_config.dart';
import 'package:charity/shared_files/themes.dart';
import 'package:charity/views/home/components/header.dart';
import 'package:charity/views/home/home_body.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {


  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'Flutter Demo',
      theme: MyThemes.MainTheme,
      debugShowCheckedModeBanner: false,
      home: MainBody(),
    );
  }
}

class MainBody extends StatefulWidget {
  const MainBody({Key? key}) : super(key: key);

  @override
  _MainBodyState createState() => _MainBodyState();
}

class _MainBodyState extends State<MainBody> with AutomaticKeepAliveClientMixin{
    int _selectedIndex = 0;

    static const TextStyle optionStyle =
    TextStyle(fontSize: 30, fontWeight: FontWeight.bold);


  @override
  Widget build(BuildContext context) {

    SizeConfig().init(context); // Initializing my screen width and height

    return Scaffold(
      body: SafeArea(
          child: Column(
            children: [
              MainHeader(), // Instead of app bar
              Expanded(
                  child: IndexedStack(
                    index: _selectedIndex,
                    children: <Widget> [
                      HomeScreen(),
                      Text(
                        'Index 1: Business',
                        style: optionStyle,
                      ),
                      Text(
                        'Index 2: School',
                        style: optionStyle,
                      ),
                    ],
                  )
              )
            ]

          )
      ),
      
      
      bottomNavigationBar: BottomNavigationBar(

        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Business',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'School',
          ),
        ],


        currentIndex: _selectedIndex,

        selectedItemColor: Colors.pinkAccent,

        onTap: (int index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
    );
  }

    @override
    bool get wantKeepAlive {
      return true;
    }
}
