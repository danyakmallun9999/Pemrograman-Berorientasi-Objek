void main () {
  SepedaMotor motor = new SepedaMotor();

  motor.setMerk("Honda");
  motor.setColor("Merah");
  motor.setSein("Kiri");
  print("Motor ini bermerk  ${motor.getMerk()!} berwarna ${motor.getColor()!} lampu sein ke ${motor.getSein()!}");
}

class SepedaMotor {
  String? merk;
  String? color;
  String? sein;
  String? setMerk(String merkMotor) {
    merk = merkMotor;
    return null;
  }

  String? getMerk() {
    return merk;
  }

  String? setColor(String colorMotor) {
    color = colorMotor;
    return null;
  }

  String? getColor() {
    return color;
  }

  String? setSein(String arahSein){
    sein = arahSein;
    return null;
  }

  String? getSein(){
    return sein;
  }
}