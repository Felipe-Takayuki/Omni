
import 'package:flutter/material.dart';

class TextFieldPerosnalizado extends StatelessWidget {
  const TextFieldPerosnalizado({ Key? key, required this.tipo, required this.o, required this.icone,  this.textocontrolado }) : super(key: key);
  final String tipo;
  final bool o;
  final dynamic icone;
  final dynamic textocontrolado;
  @override
  Widget build(BuildContext context) {
    return  SizedBox(
                        width: 273,
                        child: TextField(
                            controller:textocontrolado ,
                          obscureText:o ,
                          decoration: InputDecoration(
                          
                              prefixIcon: SizedBox(
                                width: 25, height: 25,
                                child: Icon(icone,
                                    color: Color.fromRGBO(39, 127, 242, 1),
                                   
                                    ),
                              ),
                              hintText: tipo,
                              hintStyle: TextStyle(
                                 color: Color.fromRGBO(139, 183, 241, 1),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400, 
                                  fontFamily: 'Montserrat'
                                  ),
                                  
                                  ),
                        ));
  }
}