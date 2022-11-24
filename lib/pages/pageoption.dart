import 'package:flutter/material.dart';
import 'package:omnipresent_test/pages/PageCadastro.dart';
import 'package:omnipresent_test/pages/PageLogin.dart';
import 'package:omnipresent_test/widgets/botao.dart';
class OpcoesdeLogin extends StatefulWidget {
  const OpcoesdeLogin({super.key});

  @override
  State<OpcoesdeLogin> createState() => _OpcoesdeLoginState();
}

class _OpcoesdeLoginState extends State<OpcoesdeLogin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TeladeOpcoes() ,
    );
  }
}
class TeladeOpcoes extends StatefulWidget {
  const TeladeOpcoes({super.key});

  @override
  State<TeladeOpcoes> createState() => _TeladeOpcoesState();
}

class _TeladeOpcoesState extends State<TeladeOpcoes> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(child: 
      Center(
        child: Column(
          children: [
             Padding(
                    padding: const EdgeInsets.only(top: 50, right: 31, left: 43, bottom: 68),
                    child: Image.asset(
                      'assets/images/logotitle.png',
                      width: 286,
                      height: 62,
                    ),
                  ),
              Padding(
                padding: const EdgeInsets.only(bottom: 51),
                child: ButtonCAD(tituloBotao: "Cadastrar como Empresa", rota: null,)
              ),
                   Padding(
                padding: const EdgeInsets.only(bottom: 27),
                child: ButtonCAD(tituloBotao: 'Cadastrar como Participante', rota: CadastroTela(),)
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 21),
                child: Container(width: 192, height: 1, color:const Color.fromRGBO(139, 183, 241, 1),),
              ),
              Center(child: Padding(
                padding: const EdgeInsets.only(bottom: 51),
                child: ButtonCAD(tituloBotao: 'Ja tenho Login', rota: LoginPage(),)
              )),

          ],
        ),
      )),
    );
  }
}