import 'package:flutter/material.dart';


class Itemevento extends StatelessWidget {
  const Itemevento(
      {super.key,
      required this.name,
      required this.date,
      required this.persons,
      required this.link});
  final String name;
  final String date;
  final String persons;
  final String link;
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
      height: 300,
      width: 200,
      margin: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          Center(
              child: ListTile(
            title: Text(name),
            subtitle: Text(date),
          )),
          SizedBox(
            width: 2,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Nº de candidatos :' + persons),
              IconButton(onPressed: () {}, icon: Icon(Icons.person))
            ],
          ),
          SizedBox(
            width: 2,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // QrImage(
              //   data:
              //      link,
              //   version: QrVersions.auto,
              //   size: 150,
              // )
            ],
          )
        ],
      ),
    ));
  }
}
