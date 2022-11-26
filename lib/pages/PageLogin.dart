import 'package:flutter/material.dart';
import 'package:omnipresent_test/pages/perfil.dart';
import 'package:omnipresent_test/widgets/TextField.dart';
import 'package:omnipresent_test/widgets/botao.dart';
class Cadastro extends StatefulWidget {
  const Cadastro({ Key? key }) : super(key: key);

  @override
  _CadastroState createState() => _CadastroState();
}

class _CadastroState extends State<Cadastro> {
  @override
  Widget build(BuildContext context) {
    return Container(
      
    );
  }
}
class LoginPage extends StatefulWidget {
  const LoginPage({ Key? key }) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
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
                            padding: const EdgeInsets.only(top: 22.2, right: 31, left: 43),
                            child: Image.asset(
                              'assets/images/logotitle.png',
                              width: 286,
                              height: 62,
                            ),
                          ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: 10, right: 31, left: 43,),
                              child: const Text(
                                'LOGIN',
                                style: TextStyle(
                                    fontSize: 55,
                                    fontWeight: FontWeight.w400,
                                    fontFamily: 'Montserrat',
                                    color: Color.fromRGBO(139, 183, 241, 1)),
                              ),
                            ),
                           const Padding(
                padding:  EdgeInsets.only( bottom: 49),
                child: Center(
                  child: Text('Como particante',
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'Abel',
                        color: Color.fromRGBO(139, 183, 241, 1),
                      )),
                ),
              ),
                           const Padding(
                              padding:   EdgeInsets.only(bottom: 42),
                              child: TextFieldPerosnalizado(tipo: 'CPF', o: false,icone: "assets/images/cartao-de-visitas 1.png",),
                            ),
                 
                            const Padding(
                             padding:  EdgeInsets.only(bottom: 42),
                              child: TextFieldPerosnalizado(tipo: 'Senha', o: true, icone:"assets/images/image 4.png",),
                            ),
                        
                           
                            SizedBox(
                              height: 44,
                            ),
                         
                            Padding(
                         padding: const EdgeInsets.only(bottom: 24),
                      child: ElevatedButton(
                          onPressed: () {
                                   Navigator.of(context).push(MaterialPageRoute(
                       builder: (context) => Perfil()));
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