import 'package:atv_calculadora/model/calculadora_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class BotaoCalculadora extends StatelessWidget {
  final bool acao;
  final String texto;
  final int? flex;
  const BotaoCalculadora({super.key, required this.texto, this.acao = false, this.flex});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: flex ?? 1,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ElevatedButton(
          onPressed: () {
            context.read<CalculadoraModel>().acao(tipo: texto);
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: acao ? Colors.orange : Colors.grey.withOpacity(0.5),
            padding: const EdgeInsets.all(0),
            shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(50))),
          ),
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Text(
              texto,
              style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18),
            ),
          ),
        ),
      ),
    );
  }
}
