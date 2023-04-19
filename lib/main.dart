import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:math';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'APP frases aleatórias',
    home: Frases(),
  ));
}

class Frases extends StatefulWidget{
  const Frases({Key? key}) : super(key: key);
  @override
  State<Frases> createState() => _FrasesState();
}
class _FrasesState extends State<Frases> {

  //back do app
  //criar um array de frases
  final _frases = [
    "DON'T YOU TALK ABOUT MY MOTHER!!!!!!",
    "Now I know what friendship tastes like… tastes like a bug!",
    "WHO ARE YOU, THIS IS MY TERRITORY, AHHHH",
    "I will be haunted by my actions forever",
    "Well, you dance was...offensive, and your attempt to make a cocoon was just sad.",
    "GUESS WHO FOUND A SPECIAL FRIEND IN THE FORREST? IT WAS ME!!!",
    "Dear Lulu",
    "O mundo é um lugar preconceituoso!"
  ];

  var _frasesGerada = 'Clique abaixo para gerar uma frase!';

  void _gerarFrase(){//funçao para gerar a frase aleatoria

    var numeroSorteado = Random().nextInt(_frases.length);
    //random é importado do 'dart:math
    setState(() {
      _frasesGerada= _frases[numeroSorteado];
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
            'Frases do Hooty',
            style: GoogleFonts.nunito(
              fontWeight: FontWeight.w800,
              fontSize: 20,
            )),
        backgroundColor: const Color(0xFF895931),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Image.asset('image/hooty.jpg'),
              Text(_frasesGerada,
                textAlign: TextAlign.center,
                style: GoogleFonts.nunito(
                  fontSize: 25,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.w800,
                  color: const Color(0xFF895931),
                ),
              ),
              ElevatedButton(
                onPressed: _gerarFrase,
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF895931),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: Text('Nova Frase',
                  style: GoogleFonts.nunito(
                      fontSize: 25,
                      color: const Color(0xFFE8C07A),
                      fontWeight: FontWeight.bold
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}