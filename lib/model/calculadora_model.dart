import 'package:flutter/material.dart';

class CalculadoraModel extends ChangeNotifier {
  String valorAnterior = '';
  String operacao = '';
  String valorEmTela = "0";

  void acao({required String tipo}) {
    print(tipo);
    switch (tipo) {
      case "AC":
        limpaValorAtual();
        break;
      case "C":
        limpaTudo();
        break;
      case "=":
        resultado();
        break;
      case "+":
        iniciaOperacao(tipo);
        break;
      case "-":
        iniciaOperacao(tipo);
        break;
      case "X":
        iniciaOperacao(tipo);
        break;
      case "/":
        iniciaOperacao(tipo);
        break;
      default:
        if (valorEmTela == "0") {
          valorEmTela = tipo;
          notifyListeners();
        } else {
          valorEmTela += tipo;
          notifyListeners();
        }
    }
  }

  iniciaOperacao(String operador) {
    print("INICIEI OPERACAO");
    if (valorEmTela != "0" && valorAnterior.isNotEmpty) {
      print("to aq");
      operacao = operador;
      valorAnterior = valorEmTela;
      valorEmTela = "0";
    } else {
      print("to no else");
      valorAnterior = valorEmTela;
      operacao = operador;
      valorEmTela = "0";
    }
    notifyListeners();
  }

  void resultado() {
    print("comecando resultado");
    print(operacao);
    switch (operacao) {
      case "+":
        valorEmTela = (double.parse(valorAnterior) + double.parse(valorEmTela)).toStringAsFixed(2);
        break;
      case "-":
        valorEmTela = (double.parse(valorAnterior) - double.parse(valorEmTela)).toStringAsFixed(2);
        break;
      case "/":
        valorEmTela = (double.parse(valorAnterior) / double.parse(valorEmTela)).toStringAsFixed(2);
        break;
      case "X":
        valorEmTela = (double.parse(valorAnterior) * double.parse(valorEmTela)).toStringAsFixed(2);
        break;
    }
    notifyListeners();
  }

  void limpaValorAtual() {
    valorEmTela = "0";
    notifyListeners();
  }

  void limpaTudo() {
    valorEmTela = "0";
    valorAnterior = '';
    operacao = '';
    notifyListeners();
  }
}
