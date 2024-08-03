void sayHello (String firstname, [String? middlename, String? lastname]) {
  print("Hello, $firstname, $middlename, $lastname");
}

void main () {
  sayHello("Dany");
  sayHello("Dany","Akmallun");
  sayHello("Dany","Akmallun","Niam");
}