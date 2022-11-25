import 'package:flutter/material.dart';

class TextFieldPerosnalizado extends StatelessWidget {
  const TextFieldPerosnalizado(
      {Key? key,
      required this.tipo,
      required this.o,
      this.icone,
      this.textocontrolado})
      : super(key: key);
  final String tipo;
  final bool o;
  final dynamic icone;
  final dynamic textocontrolado;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: 273,
        child: TextFormField(
          controller: textocontrolado,
          obscureText: o,
          decoration: InputDecoration(
            prefixIcon: SizedBox(
              width: 25,
              height: 25,
              child: Image.asset(icone),
            ),
            hintText: tipo,
            hintStyle: TextStyle(
                color: Color.fromRGBO(139, 183, 241, 1),
                fontSize: 16,
                fontWeight: FontWeight.w400,
                fontFamily: 'Montserrat'),
          ),
        ));
  }
}

class TextFormFieldPersonalizado extends StatefulWidget {
  const TextFormFieldPersonalizado({super.key});

  @override
  State<TextFormFieldPersonalizado> createState() =>
      _TextFormFieldPersonalizadoState();
}

final _formKey = GlobalKey<FormState>();

class _TextFormFieldPersonalizadoState
    extends State<TextFormFieldPersonalizado> {
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: TextFormField(
      
       
        decoration: InputDecoration(
          prefixIcon: SizedBox(
            width: 25,
            height: 25,
            child: Image.asset(""),
          ),
          hintText: "tipo",
          hintStyle: TextStyle(
              color: Color.fromRGBO(139, 183, 241, 1),
              fontSize: 16,
              fontWeight: FontWeight.w400,
              fontFamily: 'Montserrat'),
        ),
      ),
    );
  }
}
