import 'dart:convert';
import 'dart:io';
import 'package:calculo_imc/pessoa.dart';

void main(List<String> arguments) {
  print("Digite seu nome: ");
  var nome = stdin.readLineSync(encoding: utf8);

  print("Digite seu peso em KG (Ex.: 89.8): ");
  var line = stdin.readLineSync(encoding: utf8);
  var peso = double.parse(line ?? "0");

  stdout.write('Digite sua altura em metros (Ex.: 1.80): ');
  line = stdin.readLineSync(encoding: utf8);
  var altura = double.parse(line ?? "0");

  double imc = peso / (altura * altura);
  print(imc.toStringAsFixed(2));

  if (imc < 16) {
    print("magreza grave");
  } else if (imc < 18.5) {
    print("magreza leve");
  } else if (imc < 25) {
    print("saudavel");
  } else if (imc < 35) {
    print("Obesidade grau I");
  } else if (imc < 40) {
    print("Obesidade grau II - severa");
  }else {
    print("Obesidade grau III - Morbida");
  }

  //var p3 = Pessoa("$nome", "$peso", "$altura");
  //print(p3);
}
