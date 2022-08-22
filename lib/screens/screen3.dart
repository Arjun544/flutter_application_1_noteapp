import 'dart:developer';

import 'package:flutter/material.dart';

import 'Home_screen.dart';

class Thirdscrn extends StatefulWidget {
  final List notes;

  const Thirdscrn({super.key, required this.notes});

  @override
  State<Thirdscrn> createState() => _ThirdscrnState();
}

class _ThirdscrnState extends State<Thirdscrn> {
  TextEditingController nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        // title: const Text(
        //   "NOTES",
        //   style: TextStyle(
        //     color: Colors.white,
        //   ),
        // ),
        leading: Container(
          margin: const EdgeInsets.all(8),
          alignment: Alignment.center,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.blueGrey,
          ),
          child: IconButton(
            icon: const Icon(
              Icons.arrow_back_ios_new_sharp,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        actions: [
          GestureDetector(
            onTap: () async {
              log(widget.notes.toString());
              widget.notes.add(nameController.text);
              log(widget.notes.toString());
              Navigator.pop(context);
            },
            child: Container(
              margin: const EdgeInsets.fromLTRB(5, 8, 5, 8),
              padding: const EdgeInsets.fromLTRB(8, 2, 8, 2),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.blueGrey,
              ),
              child: const Center(
                  child: Text(
                "Save",
                style: TextStyle(fontSize: 20),
              )),
            ),
          ),

          // IconButton(
          //   onPressed: () {},
          //   icon: const Icon(Icons.more_vert),
          // ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            TextField(
              controller: nameController,
              style: const TextStyle(color: Colors.white, fontSize: 40),
              keyboardType: TextInputType.emailAddress,
              onChanged: (val) {
                log('On changed is called');
              },
              decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: ("Title"),
                  hintStyle: TextStyle(
                      color: Color.fromARGB(255, 145, 145, 145),
                      fontSize: 40,
                      fontWeight: FontWeight.bold),
                  labelStyle: TextStyle(color: Colors.white, fontSize: 50)),
            ),

            // TextField(
            //   style: TextStyle(color: Colors.white),
            //   keyboardType: TextInputType.emailAddress,
            //   decoration: InputDecoration(
            //       border: OutlineInputBorder(),
            //       hintText: "Write Note Here",
            //       hintStyle:
            //           TextStyle(color: Color.fromARGB(255, 145, 145, 145)),
            //       labelStyle: TextStyle(color: Colors.white)),
            // )
          ],
        ),
      ),
    );
  }
}
