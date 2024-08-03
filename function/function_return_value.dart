int hasil (List<int> numbers) {
  var total = 0;
  for (var value in numbers) {
    total += value;
  }
  return total;
}

void main () {
  print(hasil([1,2,3,4,5,6,7,8,9]));
  print(hasil([10,20,30,40,50,60,70,80,90]));
}

