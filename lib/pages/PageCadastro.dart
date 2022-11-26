

import 'package:flutter/material.dart';
import 'package:omnipresent_test/pages/PageLogin.dart';
import 'package:omnipresent_test/pages/perfil.dart';
import 'package:omnipresent_test/pages/trueHomePage.dart';
import 'package:omnipresent_test/widgets/TextField.dart';


class CadastroTela extends StatefulWidget {
  const CadastroTela({Key? key}) : super(key: key);

  @override
  _CadastroTelaState createState() => _CadastroTelaState();
}

class _CadastroTelaState extends State<CadastroTela> {
  final TextEditingController texto = TextEditingController();
  final TextEditingController senha = TextEditingController();
  final TextEditingController CPF = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          reverse: true,
          child: Container(
            color: Colors.white,
            child: Center(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 22.32, right: 31, left: 43, bottom: 33),
                    child: Image.asset(
                      'assets/images/logotitle.png',
                      width: 286,
                      height: 62,
                    ),
                  ),
                  Center(
                      child: Image.asset("assets/images/CADASTRO.png")
                 ),
                  
                  Padding(
                    padding: const EdgeInsets.only(top: 4.66, bottom: 61),
                    child: Center(
                        child: Image.asset("assets/images/Como Participante.png")),
                  ),
                   Padding(
                     padding: const EdgeInsets.only(bottom: 49.32),
                     child: COnjunto(),
                   ),
                  // Padding(
                  //   padding: const EdgeInsets.only(bottom: 42),
                  //   child: TextFieldPerosnalizado(
                  //     tipo: 'Email',
                  //     o: false,
                  //     textocontrolado: texto,
                  //     icone: "assets/images/image 5.png",
                  //   ),
                  // ),
                  // Padding(
                  //   padding: const EdgeInsets.only(bottom: 42),
                  //   child: TextFieldPerosnalizado(
                  //       tipo: 'Senha',
                  //       textocontrolado: senha,
                  //       o: true,
                  //       icone: "assets/images/image 4.png"),
                  // ),
                  // TextFieldPerosnalizado(
                  //   tipo: 'CPF',
                  //   textocontrolado: CPF,
                  //   o: false,
                  //   icone: "assets/images/cartao-de-visitas 1.png",
                  // ),
                 
                  Padding(
                    padding: const EdgeInsets.only(bottom: 24),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => Perfil()));
                      },
                      child: Text(
                        'Confirmar',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w400),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromRGBO(107, 171, 255, 1),
                          fixedSize: Size(217, 44),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25),
                            
                          )),
                          
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 62),
                    child: TextButton(
                        onPressed: () {
                      
                        },
                        child: Text(
                          'Voltar',
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: Color.fromRGBO(139, 183, 241, 1),
                              decoration: TextDecoration.underline),
                        )),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
class COnjunto extends StatelessWidget {
   COnjunto({super.key});
   final TextEditingController texto = TextEditingController();
  final TextEditingController senha = TextEditingController();
  final TextEditingController CPF = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
         Padding(
                    padding: const EdgeInsets.only(bottom: 33),
                    child: TextFieldPerosnalizado(
                      tipo: 'Email',
                      o: false,
                      textocontrolado:texto ,
                      icone: "assets/images/image 5.png",
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom:33),
                    child: TextFieldPerosnalizado(
                        tipo: 'Senha',
                        textocontrolado: senha,
                        o: true,
                        icone: "assets/images/image 4.png"),
                  ),
                  TextFieldPerosnalizado(
                    tipo: 'CPF',
                    textocontrolado: CPF,
                    o: false,
                    icone: "assets/images/cartao-de-visitas 1.png",
                  ),
                 
      ],
    );
  }
}