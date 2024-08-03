void sayHello ({String? firstname, String? middlename, String? lastname}) {
  print("Hello, $firstname, $middlename, $lastname");
}

void main () {
  sayHello(firstname: "Dany");
  sayHello(middlename: "Akmallun");
  sayHello(lastname: "Niam");
  sayHello(firstname: "Dany", middlename: "Akmallun", lastname: "Niam");
}