import 'package:flutter/material.dart';
import 'package:flutter_application_1_noteapp/screens/screen2.dart';

class Bloack extends StatefulWidget {
  final List notes;

  final String name;

  const Bloack({super.key, required this.notes, required this.name});

  @override
  State<Bloack> createState() => _BloackState();
}

class _BloackState extends State<Bloack> {
  // const Bloack({super.key, required this.name});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: GestureDetector(
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (BuildContext context) {
            return Scndscrb(
              notes: widget.notes,
            );
          })).then((value) => setState(() {}));
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
              widget.name,
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
