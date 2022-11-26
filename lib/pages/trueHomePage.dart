import 'package:flutter/material.dart';
import 'PageCadastro.dart';

class HomeEvents extends StatefulWidget {
  const HomeEvents({super.key});

  @override
  State<HomeEvents> createState() => _HomeEventsState();
}

class _HomeEventsState extends State<HomeEvents> {
  String nome = "Felipe";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
        child: Column(
          children: [Padding(
            padding: const EdgeInsets.only(top:87, left: 33 , right: 237),
            child: Column(
              children: [
                Text("Olá \n $nome"),
                SizedBox(height: 24),
                Text("Eventos", style: TextStyle(fontFamily: "Montserrat", fontWeight: FontWeight.w800, fontSize: 24 ),)
              ],
            ),
            
          ),
         
          ],
        ),
      )),
    );
  }
}
