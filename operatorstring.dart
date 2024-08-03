String stringReverse(String s){
  String result = "";

  for ( int i = s.length; i >= 1; i-- ) {
    result += s[i-1];
  }
    return result;
}

void main (){
  String s = 'Dany Akmallun Niam';
  print(s[0]);
  print(stringReverse(s));
}