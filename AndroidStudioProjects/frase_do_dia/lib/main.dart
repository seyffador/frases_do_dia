import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    home: Home(),
    debugShowCheckedModeBanner: false,
  ));
}
class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var _frases= [
    "A persistência é a chave para alcançar seus sonhos",
    "A autoconfiança é o primeiro passo para o sucesso",
    "A coragem não é a ausência de medo, mas a capacidade de agir apesar dele",
    "A resiliência é a capacidade de se adaptar e superar desafios",
    "A determinação é o que separa os vencedores dos perdedores",
    "A gratidão transforma o que temos em o suficiente",
    "Juntos, podemos alcançar o impossível",
    "Nunca desista, pois a jornada é tão importante quanto o destino",
    "Acredite em si mesmo, pois ninguém o conhece melhor do que você",
    "Seja corajoso e ouse sonhar alto",
    "Cair sete vezes, levantar-se oito",
    "Nunca perca de vista seus objetivos",
    "Aprecie o presente, pois é um presente",
    "A força de uma equipe reside na união de seus membros",
  ];
  var _fraseGerada="Click abaixo para gerar uma frase";
  void _gerarFrase(){

    var numeroSorteado = Random().nextInt(_frases.length);

    setState(() {
      _fraseGerada =_frases [numeroSorteado];
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Frases do Dia"),
          backgroundColor: Colors.blueGrey,
        ),
        body: Center(
          child:Container(
            width: double.infinity,
            //  padding: EdgeInsets.all(16),
            //  decoration: BoxDecoration(
            //    border: Border.all(width: 3, color: Colors.cyan)
            // ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Image.asset("images/logo.png"),
                Text(
                  _fraseGerada,
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                      fontSize: 25,
                      fontStyle: FontStyle.italic,
                      color: Colors.black


                  ),
                ),

                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.green, // background
                    onPrimary: Colors.red, // foreground
                  ),
                  child: Text(
                      "Nova Frase",
                      style: TextStyle(
                          fontSize: 25,
                          color: Colors.white,
                          fontWeight: FontWeight.bold

                      )
                  ),

                  onPressed: _gerarFrase,
                )
              ],

            ),
          ),
        )
    );
  }
}