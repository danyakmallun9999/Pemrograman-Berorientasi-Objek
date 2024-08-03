import 'dart:io';
void main() {
  stdout.write('Masukkan nama : ');
  var nama = stdin.readLineSync();

  stdout.write("Masukkan umur : ");
  var umur = stdin.readLineSync();

  var usia = int.parse('$umur');

  if ( usia >= 50 ) {
    print("Umur ${nama!} adalah = ${usia + 50}");
  } else {
    print("Umur ${nama!} adalah = ${usia - 50}");
  }
}

