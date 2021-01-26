import 'package:flutter/material.dart';
import 'package:whatsapp_ui_clone/src/screens/HomeTabs/calls.dart';
import 'package:whatsapp_ui_clone/src/screens/HomeTabs/chats.dart';
import 'package:whatsapp_ui_clone/src/screens/HomeTabs/status.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CustomScrollView(
        slivers: [
          SliverAppBar(
            title: Text("WhastApp"),
            floating: true,
            backgroundColor: Colors.purple[800],
            actions: [
              IconButton(
                icon: Icon(Icons.search),
                onPressed: () {
                  print("Search Clicked");
                },
              ),
              IconButton(
                icon: Icon(Icons.more_vert),
                onPressed: () {
                  print("More Vertical Clicked");
                },
              )
            ],
            expandedHeight: 50,
          ),
          SliverFillRemaining(
            child: DefaultTabController(
              initialIndex: 0,
              length: 3,
              child: Scaffold(
                backgroundColor: Colors.purple[800],
                appBar: TabBar(
                  unselectedLabelColor: Colors.white70,
                  labelColor: Colors.white,
                  indicatorColor: Colors.white,
                  indicatorWeight: 2.0,
                  tabs: [
                    Tab(
                      text: "Chats",
                    ),
                    Tab(
                      text: "Status",
                    ),
                    Tab(
                      text: "Calls",
                    ),
                  ],
                ),
                body: TabBarView(
                  children: [
                    Chats(),
                    Calls(),
                    Status(),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

// Container(
//                 decoration: BoxDecoration(
//                   color: Colors.green[700],
//                   boxShadow: [
//                     BoxShadow(
//                       color: Colors.black54,
//                       blurRadius: 2.0,
//                     ),
//                   ],
//                 ),
//                 child: TabBar(
//                   unselectedLabelColor: Colors.white70,
//                   labelColor: Colors.white,
//                   indicatorColor: Colors.white,
//                   indicatorWeight: 2.0,
//                   tabs: [
//                     Tab(
//                       text: "Chats",
//                     ),
//                     Tab(
//                       text: "Chats",
//                     ),
//                     Tab(
//                       text: "Chats",
//                     ),
//                   ],
//                 ),
//               ),
