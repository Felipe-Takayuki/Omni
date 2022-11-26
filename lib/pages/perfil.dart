import 'package:flutter/material.dart';
import 'package:omnipresent_test/pages/trueHomePage.dart';
import 'package:omnipresent_test/widgets/TextField.dart';

class Perfil extends StatefulWidget {
  const Perfil({ Key? key }) : super(key: key);

  @override
  _PerfilState createState() => _PerfilState();
}

class _PerfilState extends State<Perfil> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: 
      SingleChildScrollView(
        reverse: true,
        child: Center(
          child: Column(children: [
              Padding(
                          padding:  EdgeInsets.only(top: 28, right: 31, left: 43),
                          child: Image.asset(
                            
                            "assets/images/logotitle.png",
                            fit: BoxFit.cover,
                            width: 286,
                            height: 62,
                          ),
                        ),
                      
                        Stack(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 93, left: 83),
                              child: Image.asset('assets/images/do-utilizador (1) 1.png' ,width: 200, height: 200,fit: BoxFit.contain),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 227, left: 225, right: 75),
                              child: SizedBox(width: 60, height:60,child: ElevatedButton(onPressed: (){}, child: Icon(Icons.camera_alt_outlined), style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50))), )),
                            ), 
                           

                          ],
                        ),
                           Center(
                              child: Padding(
                                padding: const EdgeInsets.only(top: 108, bottom: 50),
                                child: TextFieldPerosnalizado(tipo: "Nome", o: false, icone: "assets/images/pessoa 1.png", textocontrolado: null,),
                              ),
                            ),
                            Center(
                              child: Padding(
                              padding: const EdgeInsets.only(),
                              child: ElevatedButton(
                                onPressed: () {
                                   Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => HomeEvents()));
                                },
                                child: Text(
                                  'Confirmar',
                                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                                ),
                                style: ElevatedButton.styleFrom(fixedSize: Size(217, 44), shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25), ), backgroundColor: Color.fromRGBO(107, 171, 255, 1)),
                              ),
                              
                          ),
                          
                            ),
                            TextButton(onPressed: (){
                               Navigator.pop(context);
                            }, child: Text(
                          'Voltar',
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: Color.fromRGBO(139, 183, 241, 1),
                              decoration: TextDecoration.underline),
                        )), 
                            Row(
                              children: [
                                Spacer(),
                                TextButton(onPressed: (){
                                    Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => HomeEvents()));
                                }, child: Text('Pular'))
                              ],
                            )
 
          ]),
        ),
      )
      ),
    );
  }
}
class MudarFotoStatic extends StatelessWidget {
  const MudarFotoStatic({super.key});

  @override
  Widget build(BuildContext context) {
    return  Stack(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 93, left: 83),
                              child: Image.asset('assets/images/do-utilizador (1) 1.png' ,width: 200, height: 200,fit: BoxFit.contain),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 227, left: 225, right: 75),
                              child: SizedBox(width: 60, height:60,child: ElevatedButton(onPressed: (){}, child: Icon(Icons.camera_alt_outlined), style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50))), )),
                            ), 
                           

                          ],
                        );
  }
}