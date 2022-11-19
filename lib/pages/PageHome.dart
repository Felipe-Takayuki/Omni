
import 'package:flutter/material.dart';
import 'package:omnipresent_test/widgets/itemevento.dart';


class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
   
      body: SafeArea(child: 
      Container(
        child: Center(
          child: Column(
            children: [
               Padding(
                    padding: const EdgeInsets.only(top: 20, right: 31, left: 43),
                    child: Image.asset(
                      'assets/images/logotitle.png',
                      width: 286,
                      height: 62,
                    ),
                  ),
                SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    children: [
                     Container(width: 277, height: 97,margin: EdgeInsets.only(top: 26), decoration: BoxDecoration(color: Color.fromRGBO(217, 217, 217, 1) , borderRadius: BorderRadius.circular(15))),
                     Container(width: 277, height: 97,margin: EdgeInsets.only(top: 26), decoration: BoxDecoration(color: Color.fromRGBO(217, 217, 217, 1) , borderRadius: BorderRadius.circular(15))),
                     Container(width: 277, height: 97,margin: EdgeInsets.only(top: 26), decoration: BoxDecoration(color: Color.fromRGBO(217, 217, 217, 1) , borderRadius: BorderRadius.circular(15))),
                     
                    ],
                  ),
                )
            ],
          ),
        ),
      )
      ),
      
    );
  }
}
