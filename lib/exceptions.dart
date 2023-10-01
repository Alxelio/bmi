import 'dart:io';
import 'package:teste/cauculus.dart';
import 'person.dart';
import 'dart:math';

class Exceptions{
  String? namee;
  String? weightt;
  String? heightt;

  double? weightty;
  double? heightty;
  double? bmi;
  double? imc;

  Person checkCommaPoint(){
    try{
      if(weightt!.contains(",") || heightt!.contains(",")){
        weightt = weightt!.replaceAll(",", ".");

        heightt = heightt!.replaceAll(",", ".");
      }
    }
    catch(e){
      stdout.write("there was an error $e! \n");
    }

    double? weightty = double.tryParse(weightt ?? '0.00');

    double? heightty = double.tryParse(heightt ?? "0.00");

    if(weightty! <= 0 || heightty! <= 0 || weightty == null || heightty == null){
      throw Exception("There is an error! Weight or Height should be grater than zero! ");
    }

    double bmi = weightty / ( pow(heightty, 2) );

    imc = calculus(bmi);

    return Person(namee: "Cauculus", weightt: weightt, heightt: heightt );
  }
}

