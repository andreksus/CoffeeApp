import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const SliverAppBar(
            floating: false,
            expandedHeight: 120.0,
            flexibleSpace: FlexibleSpaceBar(
              title: Text('SilverGrid AppBar'),
            ),
          ),
      SliverGrid(
        delegate: SliverChildBuilderDelegate(
              (context, index) {
            return Container(
              alignment: Alignment.center,
              color: Colors.teal[100 * (index % 9)],
              child: Text('grid item $index'),
            );
          },
          childCount: 10,
        ),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          mainAxisSpacing: 15,
          crossAxisSpacing: 15,
          childAspectRatio: 2.0,
        ),
      ),
          SliverToBoxAdapter(
            child: Container(
              color: Colors.yellow,
              padding: const EdgeInsets.all(8.0),
              child: const Text('Grid Header', style: TextStyle(fontSize: 24)),
            ),
          ),
          SliverGrid.count(
            crossAxisCount: 3,
            mainAxisSpacing: 10.0,
            crossAxisSpacing: 10.0,
            childAspectRatio: 4.0,
            children: <Widget>[
              Container(color: Colors.red),
              Container(color: Colors.green),
              Container(color: Colors.blue),
              Container(color: Colors.red),
              Container(color: Colors.green),
              Container(color: Colors.blue),
            ],
          ),
          SliverGrid.extent(
            maxCrossAxisExtent: 200,
            mainAxisSpacing: 10.0,
            crossAxisSpacing: 10.0,
            childAspectRatio: 4.0,
            children: <Widget>[
              Container(color: Colors.pink),
              Container(color: Colors.indigo),
              Container(color: Colors.orange),
              Container(color: Colors.pink),
              Container(color: Colors.indigo),
              Container(color: Colors.orange),
            ],
          ),
        ],
      )
    );
  }
}