import 'package:flutter/material.dart';

class ContainerEvento extends StatelessWidget {
  const ContainerEvento({ Key? key , required this.imagem, required this.nomeevento, required this.datadoevento}) : super(key: key);
  final dynamic imagem;
  final String nomeevento;
  final String datadoevento;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(25)),
      width: 290,
      height: 288,
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 16, left: 14 , right: 15, bottom: 97),
            child: ClipRRect(borderRadius: BorderRadius.circular(15),child: Image.asset(imagem, width: 261, height: 275, )),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 201, left: 103, right: 15),
            child: Column(
              children: [
                Text(nomeevento, style: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
                 Text(datadoevento, style: const TextStyle(fontSize: 11),),
              ],
            ),
          ),
           Padding(
             padding: const EdgeInsets.only(top: 253, right: 90, left: 90, bottom: 10),
             child: ElevatedButton(onPressed: (){}, child: Text('Inscrever-se',),style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25))),),
           )
        ],
      ),
    );
  }
}