import 'dart:io';

void main(){
  String namee;
  double weightt;
  double heightt;

  stdout.write("Enter your name please!");
  namee = stdin.readLineSync() ?? " ";
  //print(namee);

  stdout.write("Enter your weight in kilograms please!");
  weightt = double.parse(stdin.readLineSync() ?? "0.00 ");
  //print(weightt);

  stdout.write("Enter your height in meters please!");
  heightt = double.parse(stdin.readLineSync() ?? "0.00");
  //print(heightt);

}