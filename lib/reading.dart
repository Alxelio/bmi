import 'dart:io';
import 'person.dart';

class Reading{

  Person toRead(){
    String namee;
    String weightt;
    String heightt;

    stdout.write("Enter your name please! \n");
    namee = stdin.readLineSync() ?? " ";

    stdout.write("Enter your weight in kilograms with point please! North-American System! \n");
    weightt = stdin.readLineSync() ?? "0.00 ";

    stdout.write("Enter your height in meters with point please!  North-American System! \n");
    heightt = stdin.readLineSync() ?? "0.00";

    return Person(namee: namee, weightt: weightt, heightt: heightt);
  }
}

