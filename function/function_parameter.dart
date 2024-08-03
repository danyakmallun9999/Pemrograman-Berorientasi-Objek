
// void parameter (String firstname, String lastname) {
//   print('Hello $firstname, $lastname');
// }

// void main () {
//   parameter('Dany', 'Akmallun');
// }

// void main () {
//   great('danyakmallun', 2015);
// }

// void great (String name, bornYear) {
//   var age = 2020 - bornYear;
//   print("Halo $name! Tahun ini anda berusia $age Tahun");
// }


// FUNCTION PARAMETER
void main() {
  var firstNumber = 7;
  var secondNumber = 12;
  print("rata-rata dari $firstNumber & $secondNumber adalah ${average(firstNumber, secondNumber)}");
}

double average (num num1, num num2) {
  return (num1 + num2 ) / 2;
}
