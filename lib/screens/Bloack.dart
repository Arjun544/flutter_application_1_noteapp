import 'package:flutter/material.dart';
import 'package:flutter_application_1_noteapp/screens/screen2.dart';

class Bloack extends StatelessWidget {
  final List notes;
  
  final String name;

  const Bloack({super.key, required this.notes, required this.name});

 

  // const Bloack({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: GestureDetector(
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (BuildContext context) {
            return  Scndscrb(
              notes: notes,
            );
          }));
        },
        child: Container(
          padding: const EdgeInsets.fromLTRB(15, 10, 15, 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.blueGrey,
          ),
          width: double.infinity,
          height: 150,
          child: Center(
            child: Text(
              name,
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
              maxLines: 3,
              textAlign: TextAlign.justify,
            ),
          ),
        ),
      ),
    );
  }
}
