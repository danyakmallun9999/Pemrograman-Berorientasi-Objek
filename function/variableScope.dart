void main () {
  var rego = 300000;
  var diskon = cekDiskon(rego);
  print('Anda harus membayar : ${rego - diskon}');
}

num cekDiskon(num rego){
  num diskon = 0;
  if (rego > 10000){
    diskon = 10 / 100 * rego;
  }
  return diskon;
}