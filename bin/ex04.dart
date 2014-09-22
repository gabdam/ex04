import 'dart:math' as math;
main() {
  int nombre = 9;
  String fibSeq = fib(nombre);
  print("1) The first ${nombre + 1} numbers of the Fibonacci sequence are: ${fibSeq}");
  
  String position = rectangle();
  print("2) The coordinates are $position");
  
  DateTime now = new DateTime.now();
  DateTime birth = new DateTime(1993, 11, 10);
  DateTime timeResult = new DateTime(now.year, now.month, now.day);
  DateTime elapsed = elapsedTime(timeResult, birth);
  print("3) Depuis ma naissance, il s'est écoulé ${elapsed.year} années, ${elapsed.month} mois et ${elapsed.day} jours.");
  
  double capital = finance();
  print("4) Total interest accumulated over 5 years will be ${capital} dollars.");
  
  String result = table();
  print("5) The first 16 terms of the 8 times table are: $result");
}

// 1) Séquence de fibonacci - Modifié à partir de la méthode à cette adresse https://github.com/dzenanr/ondart_examples/blob/master/ondart_functions/fibonacci_with_iteration.dart
String fib (int n) {
int first = 0, second = 1, x = 1, y = 1;
String debut = "0 1";
while (n>y) {
 x = first + second;
 debut = "$debut $x";
 first = second;
 second = x;
 y = y + 1;
}

return debut;
}
  
// 2) Calculer le point final
String rectangle() {
  String position = "";
  double centerY = 600/2, centerX = 800/2; //determine le point central
  int c = 160;
  double a = 1.1, b = 1.1; // Selon pythagore: c2 = a2 + b2 où a2 = b2, car l'angle est de 45 degrés.
  a = (math.pow(c, 2))/2;
  b = (math.sqrt(a));
  centerX = centerX + b;
  centerY = centerY + b;
  position = "X: $centerX Y: $centerY";
  return position;
}


// 3) Temps depuis naissance
// Selon ces informations https://api.dartlang.org/apidocs/channels/stable/dartdoc-viewer/dart:core
DateTime elapsedTime(DateTime a, DateTime b) {
   Duration elapsedDifference = a.difference(b);
   DateTime elapsedSinceBirth = new DateTime(0).add(elapsedDifference);
   return elapsedSinceBirth;
}

// 4) Calculer l'intérêt sur un montant de 1000$
double finance() {
  int initial = 1000, time = 5;
  double rate = 1.048;
  double capital = (initial*(math.pow(rate, time)))-initial;
  return capital;
}

// 5) Table de 8
String table() {
  int eight = 8, factor = 0, result = 0;
  String table = "";
  while (factor<16) {
    result = eight*factor;
    factor = factor + 1;
    table = "$table $result";
  }
  return table;
  
}

   

