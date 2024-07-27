import 'dart:io';

void main() {
  // Aplikasi pemberi nilai mahasiswa
  // inisialisasi variable
  String? namaMhs, prodiMhs, tingkahLaku;
  int nilaiTugas, nilaiUts, nilaiUas;

  // input nama mahasiswa
  stdout.write("Masukkan nama mahasiswa : ");
  namaMhs = stdin.readLineSync();

  // input prodi mahasiswa
  stdout.write('Masukkan prodi mahasiswa : ');
  prodiMhs = stdin.readLineSync();

  // input tingkah laku mahasiswa
  stdout.write('Masukkan tingkah laku mahasiswa (jelek/bagus): ');
  tingkahLaku = stdin.readLineSync();

  // input nilai tugas mahasiswa
  stdout.write("Masukkan nilai tugas MHS : ");
  var inputNilaiTGS = stdin.readLineSync();
  nilaiTugas = int.parse(inputNilaiTGS!);

  // input nilai uts mahasiswa
  stdout.write("Masukkan nilai uts MHS : ");
  var inputNilaiUTS = stdin.readLineSync();
  nilaiUts = int.parse(inputNilaiUTS!);

  // input nilai uas mahasiswa
  stdout.write("Masukkan nilai uas MHS : ");
  var inputNilaiUAS = stdin.readLineSync();
  nilaiUas = int.parse(inputNilaiUAS!);

  // Pengkondisian
  // jika nilai tugas >= 90 && nilai uts >= 90 && nilai uas >= 90
  if (nilaiTugas >= 90 && nilaiUts >= 90 && nilaiUas >= 90) {
    // lulus dengan baik
    dataMahasiswa(
        namaMhs, prodiMhs, nilaiTugas, nilaiUts, nilaiUas, tingkahLaku);
    print('STATUS = LULUS dengan baik !');
  } else {
    // di bawah nilai tersebut
    // LULUS
    dataMahasiswa(
        namaMhs, prodiMhs, nilaiTugas, nilaiUts, nilaiUas, tingkahLaku);
    print('STATUS = LULUS!');
  }
}

// data mahasiswa
void dataMahasiswa(
    namaMhs, prodiMhs, nilaiTugas, nilaiUts, nilaiUas, tingkahLaku) {
  // jika tingkah laku bagus tambah nilai + 10
  if (tingkahLaku == 'bagus') {
    nilaiTugas += 10;
    // cek jika nilai tugas lebih dari 100, jadikan 100
    if (nilaiTugas > 100) {
      nilaiTugas = 100;
    }
  } else {
    // selain itu nilai - 10
    nilaiTugas -= 10;
    // cek jika nilai kurang dari 1, jadikan 1
    if (nilaiTugas < 1) {
      nilaiTugas = 1;
    }
  }
  print(' ');
  print('$namaMhs prodi $prodiMhs');
  print('nilai TUGAS : $nilaiTugas');
  print('nilai UTS : $nilaiUts');
  print('nilai UAS : $nilaiUas');

  // rata-rata nilai mahasiswa
  num rataRata = (nilaiTugas + nilaiUts + nilaiUas) / 3;
  print('Rata-rata nilai = $rataRata');
}
