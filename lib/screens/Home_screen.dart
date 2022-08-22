import 'package:flutter/material.dart';

import 'Bloack.dart';
import 'screen3.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> notes = [
    'Demo Note',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text(
          "NOTES",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        actions: [
          Container(
            margin: const EdgeInsets.all(8),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.blueGrey,
            ),
            child: Center(
              child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.search,
                  size: 25,
                ),
              ),
            ),
          ),
          // IconButton(
          //   onPressed: () {},
          //   icon: const Icon(Icons.more_vert),
          // ),
        ],
      ),
      // body: ListView(

      //   children: const [
      //     Bloack(),
      //     Bloack(),
      //     Bloack(),
      //     Bloack(),
      //     Bloack(),
      //     Bloack(),
      //     Bloack(),
      //   ],
      // ),
      body: ListView.builder(
          itemCount: notes.length,
          // scrollDirection: Axis.horizontal,
          itemBuilder: (BuildContext context, int index) {
            return Bloack(
              name: notes[index],
              notes: notes,
            );
          }),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.black,
        child: const Icon(
          Icons.add,
          color: Colors.deepPurpleAccent,
        ),
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (BuildContext context) {
            return Thirdscrn(notes: notes);
          })).then((value) => setState(() {}));
        },
      ),
    );
  }
}
