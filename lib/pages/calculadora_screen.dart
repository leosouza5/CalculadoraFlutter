import 'package:atv_calculadora/model/calculadora_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../components/botao_calculadora.dart';

class CalculadoraScreen extends StatelessWidget {
  const CalculadoraScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final calculadora = context.watch<CalculadoraModel>();
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: Container(
              color: Colors.blueGrey,
              child: Padding(
                padding: const EdgeInsets.all(14.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 24.0),
                      child: Align(
                        alignment: Alignment.bottomRight,
                        child: Text(
                          calculadora.valorAnterior,
                          style: TextStyle(fontSize: 30, color: Colors.white.withOpacity(.7)),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: Text(
                        calculadora.valorEmTela,
                        style: TextStyle(fontSize: 45, color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: Container(
                color: Colors.grey,
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        BotaoCalculadora(texto: "AC", flex: 2),
                        BotaoCalculadora(texto: "C"),
                        BotaoCalculadora(texto: "/", acao: true),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        BotaoCalculadora(texto: "7"),
                        BotaoCalculadora(texto: "8"),
                        BotaoCalculadora(texto: "9"),
                        BotaoCalculadora(texto: "X", acao: true),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        BotaoCalculadora(texto: "4"),
                        BotaoCalculadora(texto: "5"),
                        BotaoCalculadora(texto: "6"),
                        BotaoCalculadora(texto: "-", acao: true),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        BotaoCalculadora(texto: "1"),
                        BotaoCalculadora(texto: "2"),
                        BotaoCalculadora(texto: "3"),
                        BotaoCalculadora(texto: "+", acao: true),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        BotaoCalculadora(
                          texto: "0",
                          flex: 2,
                        ),
                        BotaoCalculadora(texto: "."),
                        BotaoCalculadora(texto: "=", acao: true),
                      ],
                    ),
                  ],
                )),
          ),
        ],
      ),
    );
  }
}
