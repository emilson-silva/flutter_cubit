import 'package:flutter/material.dart';
import 'package:flutter_cubit/widgets/app_large_text.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin{


  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 3,vsync: this);
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //menu text
          Container(
            padding: const EdgeInsets.only(top: 70, left: 20),
            child: Row(
              children: [
                Icon(Icons.menu, size: 30, color: Colors.black54),
                Expanded(child: Container()),
                Container(
                  margin: const EdgeInsets.only(right: 20),
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey.withOpacity(0.5),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 40),
          //discover text
          Container(
            margin: const EdgeInsets.only(left: 20),
            child: AppLargeTerxt(text: 'Discover'),
          ),
          SizedBox(height: 30),
          //tabbar
          Container(
            child: TabBar(
              controller: _tabController,
              labelColor: Colors.black,
              tabs: [
                Tab(text: "Places"),
                Tab(text: "Inspiration"),
                Tab(text: "Emotions"),
              ],
            ),
          ),
          Container(
            height: 300,
            width: double.maxFinite,
            child: TabBarView(
              controller: _tabController,
              children: [
                Text("Hi"),
                Text("There"),
                Text("Bye"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
