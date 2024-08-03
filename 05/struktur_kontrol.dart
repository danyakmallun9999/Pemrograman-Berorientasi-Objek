import 'dart:io';

void main (List<String> arguments) {
  // deklarasi variable
  stdout.write('Masukkan angka : ');
  int number = int.parse(stdin.readLineSync()!);
  // perintah if dengan tiga kasus
  if (number > 0) {
    print('positif');
  } else if (number < 0) {
    print('negatif');
  } else {
    print('nol');
  }
}