void sayHello ({required String? firstname, String? middlename, String? lastname}) {
  print("Hello, $firstname, $middlename, $lastname");
}

void main () {
  sayHello(firstname: "Dany");
  sayHello(middlename: "Akmallun", firstname: "Dany");
  sayHello(lastname: "Niam", firstname: "Dany");
  sayHello(firstname: "Dany", middlename: "Akmallun", lastname: "Niam");
}