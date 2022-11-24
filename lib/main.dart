import 'package:flutter/material.dart';
import 'package:omnipresent_test/pages/pageoption.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Splash(),
    );
  }
}
// Splash_Screen 
class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    navegate();
    super.initState();
  }

  /// naegação ao inicar a tela
  navegate() {
    Future.delayed(
      Duration(seconds: 5),
      () => Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => const OpcoesdeLogin())),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SplashScreen(),
    );
  }
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Logo
          Padding(
            padding:
                EdgeInsets.only(left: 20, right: 20, top: 44.92, bottom: 46.55),
            child: Image.asset(
              "assets/images/ponto-de-verificacao.png",
              width: 700,
              height: 150,
              alignment: Alignment.center,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 141),
            child: Text('Parcerias:',style: TextStyle(color: Colors.grey, fontSize: 16, fontWeight: FontWeight.w400, ),),
          ), 
          
          Padding(
            padding: const EdgeInsets.only(top: 7),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Logo DevMenthors
              Image.asset("assets/images/logo.png", width: 159 , height: 48, fit: BoxFit.cover,),
        
            ],),
          )
        ],
      ),
    );
  }
}

// class Home extends StatefulWidget {
//   const Home({super.key});

//   @override
//   State<Home> createState() => _HomeState();
// }

// class _HomeState extends State<Home> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//         child: Container(

//           color: Color.fromRGBO(232, 232, 232, 1),
//           child: SingleChildScrollView(
//             reverse: true,
//             child: Center(
//               child: Column(
//                 children: [
//                   Padding(
//                     padding: const EdgeInsets.only(top: 28, right: 31, left: 43),
//                     child: Image.asset(
//                       'assets/images/logotitle.png',
//                       width: 286,
//                       height: 62,
//                     ),
//                   ),
//                   parte(),
                  
//                   SizedBox(
//                     height: 70.5,
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
// class parte extends StatefulWidget {
//   const parte({super.key});

//   @override
//   State<parte> createState() => _parteState();
// }

// class _parteState extends State<parte> {
//   @override
//   Widget build(BuildContext context) {
//     return   Column(
//                   children: [
//                     Padding(
//                       padding: const EdgeInsets.only(
//                           top: 70, right: 31, left: 43, bottom: 88),
//                       child: Text(
//                         'Login',
//                         style: TextStyle(
//                             fontSize: 64,
//                             fontWeight: FontWeight.w400,
//                             fontFamily: 'Abel',
//                             color: Color.fromRGBO(44, 108, 191, 1)),
//                       ),
//                     ),
//                     SizedBox(
//                         width: 273,
//                         child: TextField(
//                           decoration: InputDecoration(
//                               prefixIcon: Icon(Icons.email_outlined,
//                                   color: Color.fromRGBO(39, 127, 242, 1)),
//                               hintText: 'E-mail',
//                               hintStyle: TextStyle(
//                                   color: Color.fromRGBO(39, 127, 242, 1),
//                                   fontSize: 16,
//                                   fontWeight: FontWeight.w400)),
//                         )),
//                     SizedBox(height: 80),
//                     SizedBox(
//                         width: 273,
//                         child: TextField(
//                           keyboardType: TextInputType.visiblePassword,
//                           obscureText: true,
//                           decoration: InputDecoration(
//                               prefixIcon: Icon(
//                                 Icons.lock_outline,
//                                 color: Color.fromRGBO(39, 127, 242, 1),
//                               ),
//                               hintText: 'Senha',
//                               hintStyle: TextStyle(
//                                   color: Color.fromRGBO(39, 127, 242, 1),
//                                   fontSize: 16,
//                                   fontWeight: FontWeight.w400)),
//                         )),
//                     SizedBox(
//                       height: 44,
//                     ),
//                     ElevatedButton(
//                       onPressed: () {
//                           Navigator.of(context).push(MaterialPageRoute(
//                           builder: (context) => App()));
//                       },
//                       child: Text(
//                         'Confirmar',
//                         style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
//                       ),
//                       style: ElevatedButton.styleFrom(fixedSize: Size(217, 44), shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15))),
//                     ),
//                     SizedBox(height: 10.5),
//                     TextButton(
//                         onPressed: () {
//                           Navigator.of(context).push(MaterialPageRoute(
//                           builder: (context) => CadastroTela()));
//                         },
//                         child: Text(
//                           'Voltar',
//                           style: TextStyle(
//                             fontSize: 16,
//                             fontWeight: FontWeight.w400,
//                           ),
//                         )),
//                   ],
//                 );
//   }
// }