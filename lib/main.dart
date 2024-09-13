import 'package:atv_calculadora/model/calculadora_model.dart';
import 'package:atv_calculadora/pages/calculadora_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const Calculadora());
}

class Calculadora extends StatelessWidget {
  const Calculadora({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CalculadoraModel(),
      child: MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
          ),
          home: const CalculadoraScreen()),
    );
  }
}
