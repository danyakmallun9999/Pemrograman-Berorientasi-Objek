import 'dart:io';

void main(List<String> arguments){
  // deklarasi variable angka & output
  // doubel = bilangan pecahan
  // int = bilangan desminal
  
  stdout.write('Masukkan angka : ');
  int angka = int.parse(stdin.readLineSync()!);

  String output;

  if (angka > 0){
    output = "Positif";
  } else {
    output = "negatif atau nol";
  }

  print(output);
}