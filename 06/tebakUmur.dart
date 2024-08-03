import 'dart:io';
import 'package:intl/intl.dart';

void main() {
  stdout.write("Masukkan tanggal lahir Anda (dd-mm-yyyy): ");
  String? input = stdin.readLineSync();

  if (input != null && input.isNotEmpty) {
    try {
      DateTime birthDate = DateFormat('dd-MM-yyyy').parse(input);
      DateTime currentDate = DateTime.now();
      int ageYears = currentDate.year - birthDate.year;
      int ageMonths = currentDate.month - birthDate.month;
      int ageDays = currentDate.day - birthDate.day;

      if (ageDays < 0) {
        ageMonths--;
        int monthDays = DateUtils.getDaysInMonth(birthDate.year, birthDate.month);
        ageDays += monthDays;
      }
      if (ageMonths < 0) {
        ageYears--;
        ageMonths += 12;
      }

      print("Umur Anda adalah: $ageYears tahun $ageMonths bulan $ageDays hari.");
    } catch (e) {
      print("Format tanggal yang Anda masukkan salah.");
    }
  } else {
    print("Anda tidak memasukkan tanggal lahir.");
  }
}

class DateUtils {
  static int getDaysInMonth(int year, int month) {
    List<int> monthLength = [
      31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31
    ];
    
    if (month == 2 && isLeapYear(year)) {
      return 29;
    }
    return monthLength[month - 1];
  }

  static bool isLeapYear(int year) {
    return (year % 4 == 0 && year % 100 != 0) || year % 400 == 0;
  }
}
