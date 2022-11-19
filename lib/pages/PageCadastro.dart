import 'package:flutter/material.dart';
import 'package:omnipresent_test/pages/PageLogin.dart';
import 'package:omnipresent_test/pages/perfil.dart';
import 'package:omnipresent_test/widgets/TextField.dart';

class CadastroTela extends StatefulWidget {
  const CadastroTela({ Key? key }) : super(key: key);

  @override
  _CadastroTelaState createState() => _CadastroTelaState();
}

class _CadastroTelaState extends State<CadastroTela> {
  final TextEditingController texto = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          reverse: true,
          child: Container(
            color:  Color.fromRGBO(232, 232, 232, 1),
            child: Center(
              child: Column(
                          children: [
                            Padding(
                            padding: const EdgeInsets.only(top: 22.32, right: 31, left: 43, bottom: 63),
                            child: Image.asset(
                              'assets/images/logotitle.png',
                              width: 286,
                              height: 62,
                            ),
                          ),
                      
                                 Center(child: Padding(
                                   padding: const EdgeInsets.only(top: 0, bottom: 0),
                                   child: Text('CADASTRO' , style: TextStyle(fontSize: 55, fontFamily: 'Montserrat', color: Color.fromRGBO(139, 183, 241, 1)),),
                                 )),
                                 Padding(
                                   padding: const EdgeInsets.only(top: 0, bottom: 65),
                                   child: Center(child: Text('Como Participante' , style: TextStyle(fontSize: 29, fontFamily: 'Montserrat', wordSpacing:0.01, color: Color.fromRGBO(139, 183, 241, 1) ),)),
                                 ),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 42),
                              child: TextFieldPerosnalizado(tipo: 'Email', o: false,icone: Icons.email_outlined, textocontrolado: texto ,),
                            ),
                 
                            Padding(
                             padding: const EdgeInsets.only(bottom: 42),
                              child: TextFieldPerosnalizado(tipo: 'Senha', o: true, icone: Icons.lock_outline,),
                            ),
                        
                            TextFieldPerosnalizado(tipo: 'CPF', o: false, icone: Icons.card_membership ,),
                            SizedBox(
                              height: 44,
                            ),
                         
                            Padding(
                              padding: const EdgeInsets.only(bottom: 24),
                              child: ElevatedButton(
                                onPressed: () {
                                 
                               
                                  
                                    Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => LoginPage()));
                               
                                },
                                child: Text(
                                  'Confirmar',
                                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                                ),
                                style: ElevatedButton.styleFrom(fixedSize: Size(217, 44), shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25), )),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 62),
                              child: TextButton(onPressed: (){}, child: Text('Voltar' , style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: Color.fromRGBO(139, 183, 241, 1), decoration: TextDecoration.underline),)),
                            )
     
                          
                          ],
                        ),
            ),
          ),
        ),
      ),
    );
    
  }
}