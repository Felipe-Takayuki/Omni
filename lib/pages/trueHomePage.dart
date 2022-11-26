import 'package:flutter/material.dart';
import 'PageCadastro.dart';

class HomeEvents extends StatefulWidget {
  const HomeEvents({super.key});

  @override
  State<HomeEvents> createState() => _HomeEventsState();
}

class _HomeEventsState extends State<HomeEvents> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 87, right: 237, left: 33, bottom: 24),
              child: Text("Ola \n[nome]"),
            ),
            Padding(padding: EdgeInsets.only(right: 237, left: 33, bottom: 29), child: Text("Eventos", style: TextStyle(fontFamily:"Montserrat", fontWeight: FontWeight.w800, fontSize: 24)
            ,),),
            SizedBox(width: 283, height:34,child: TextField(decoration: InputDecoration(prefixIcon: Image.asset("assets/images/lupa 1.png"),border: OutlineInputBorder(borderRadius: BorderRadius.circular(25)))))

            ],
        ),
      )),
    );
  }
}
