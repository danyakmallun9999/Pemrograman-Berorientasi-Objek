import 'dart:io';

void main (List<String> arguments) {
  // deklarasikan variable
  stdout.write('Masukkan angka : ');
  int number = int.parse(stdin.readLineSync()!);
  // perintah if dengan satu kasus
  if (number >= 10){
    print('angka lebih dari <= 10');
  } 
  print(number);
}