import 'dart:io';

void main() {
  double sayi1, sayi2, sonuc;
  String operator;

  print("İlk sayıyı girin: ");
  sayi1 = double.parse(stdin.readLineSync()!);

  print("İkinci sayıyı girin: ");
  sayi2 = double.parse(stdin.readLineSync()!);

  print("Toplama (+), Çıkarma (-), Çarpma (*) veya Bölme (/) operatörünü seçin: ");
  operator = stdin.readLineSync()!;

  if (operator == '+') {
    sonuc = sayi1 + sayi2;
  } else if (operator == '-') {
    sonuc = sayi1 - sayi2;
  } else if (operator == '*') {
    sonuc = sayi1 * sayi2;
  } else if (operator == '/') {
    if (sayi2 != 0) {
      sonuc = sayi1 / sayi2;
    } else {
      print("Sayılar 0'a bölünemez.");
      return;
    }
  } else {
    print("Geçersiz operatör seçimi");
    return;
  }

  print("Sonuç: $sonuc");
}