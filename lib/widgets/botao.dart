import 'package:flutter/material.dart';
import 'package:omnipresent_test/pages/perfil.dart';

class Botao extends StatefulWidget {
  const Botao({Key? key}) : super(key: key);

  @override
  _BotaoState createState() => _BotaoState();
}

class _BotaoState extends State<Botao> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 24),
          child: ElevatedButton(
            onPressed: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => Perfil()));
            },
            child: Text(
              'Confirmar',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
            ),
            style: ElevatedButton.styleFrom(
                fixedSize: Size(217, 44),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25),
                )),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 62),
          child: TextButton(
              onPressed: () {},
              child: Text(
                'Voltar',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Color.fromRGBO(139, 183, 241, 1),
                    decoration: TextDecoration.underline),
              )),
        )
      ],
    );
  }
}

class ButtonCAD extends StatelessWidget {
  const ButtonCAD({super.key, required this.tituloBotao, this.rota});
  final String tituloBotao;
  final dynamic rota;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
           Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => rota));
      },
      child: Text(
        tituloBotao,
        style: TextStyle(fontSize: 16),
      ),
      style: ElevatedButton.styleFrom(
        backgroundColor: Color.fromRGBO(139, 183, 241, 1),
        fixedSize: Size(242, 51),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
      ),
    );
  }
}
