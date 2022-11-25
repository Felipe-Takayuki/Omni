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
          children: [Text("Seja bem vindo/a \n $nome ")],
        ),
      )),
    );
  }
}
