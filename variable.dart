void main(){
  // Variable di dart

  var nama = "Dany Akmallun Niam";
  final kelas = "7";
  const nilai = 20;

  print("hello, nama saya $nama saya kelas $kelas SMP nilai ujian saya adalah $nilai");

  final nilaiMhs = [20,89,34,87];
  const nilaiDsn = [10,21,43,25];

  nilaiMhs[0] = 90;
  nilaiMhs[1] = 10;

  print(nilaiMhs[0]);
  print(nilaiMhs[1]);
  print(nilaiMhs[2]);
  print(nilaiMhs[3]);
  print(nilaiDsn[0]);


  late var value = getValue();
  print("tes");
  print(value);

}

String getValue() {
  print("getValue() dipanggil");
  return "Nama saya danyakmallun";
}