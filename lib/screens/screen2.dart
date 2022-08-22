import 'package:flutter/material.dart';
import 'package:flutter_application_1_noteapp/screens/screen3.dart';

class Scndscrb extends StatefulWidget {
  final List notes;

  const Scndscrb({super.key, required this.notes});

  @override
  State<Scndscrb> createState() => _ScndscrbState();
}

class _ScndscrbState extends State<Scndscrb> {
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
          Container(
            margin: const EdgeInsets.all(8),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.blueGrey,
            ),
            child: Center(
              child: IconButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (BuildContext context) {
                    return Thirdscrn(notes: widget.notes);
                  })).then((value) => setState(() {}));
                },
                icon: const Icon(
                  Icons.edit,
                  size: 25,
                ),
              ),
            ),
          ),
        ],
        // IconButton(
        //   onPressed: () {},
        //   icon: const Icon(Icons.more_vert),
        // ),
      ),
      body: Container(
        padding: const EdgeInsets.all(30),
        child: ListView(children: const [
          Padding(padding: EdgeInsets.all(20)),
          Text(
            "THE HYPHEN",
            style: TextStyle(
                fontWeight: FontWeight.bold, color: Colors.white, fontSize: 50),
          ),
          Text(
            "22 MAY 2022",
            style: TextStyle(
                fontWeight: FontWeight.w200,
                color: Colors.blueGrey,
                fontSize: 20),
          ),
          SizedBox(
            height: 30,
          ),
          Center(
            child: Text(
              "Use a hyphen to join two or more words to form compound adjectives that precede a noun. The purpose of joining words to form a compound adjective is to differentiate the meaning from the adjectives used separately, such as up-to-date merchandise, copper-coated wire, fire-tested material, lump-sum payment, and well-stocked cupboard.",
              textAlign: TextAlign.justify,
              style: TextStyle(
                fontWeight: FontWeight.normal,
                color: Colors.white,
                fontSize: 20,
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Center(
            child: Text(
              "Use a hyphen to join two or more words to form compound adjectives that precede a noun. The purpose of joining words to form a compound adjective is to differentiate the meaning from the adjectives used separately, such as up-to-date merchandise, copper-coated wire, fire-tested material, lump-sum payment, and well-stocked cupboard.se a hyphen to join two or more words to form compound adjectives that precede a noun. The purpose of joining words to form a compound adjective is to differentiate the meaning from the adjectives used separately, such as up-to-date merchandise, copper-coated wire, fire-tested material, lump-sum payment, and well-stocked cupboard.",
              textAlign: TextAlign.justify,
              style: TextStyle(
                  fontWeight: FontWeight.normal,
                  color: Colors.white,
                  fontSize: 20),
            ),
          )
        ]),
      ),
    );
  }
}
