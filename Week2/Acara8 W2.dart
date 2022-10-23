import 'dart:io';

void main(List<String> args) {
  InputOutput();
}

void InputOutput() {
  print("masukan nama");
  String Nama = stdin.readLineSync()!;
  while (true) {
    print("masukan karakter");
    String Karakter = stdin.readLineSync()!;
    if (Karakter == "penyihir") {
      print("Hallo, Selamat Datang " + Nama);
      print("Tipe Karakter " + Karakter);
      exit(1);
    } else if (Karakter == "Guard") {
      print("Hallo, Selamat Datang " + Nama);
      print("Tipe Karakter " + Karakter);
      exit(1);
    } else if (Karakter == "Warewolf") {
      print("Hallo, Selamat Datang " + Nama);
      print("Tipe Karakter " + Karakter);
      exit(1);
    } else {
      print("Silahkan masukan ulang karakter");
    }
  }
}
