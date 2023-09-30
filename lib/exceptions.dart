import 'dart:io';
import 'person.dart';
import 'dart:math';

class Exceptions{
  String? namee;
  String? weightt;
  String? heightt;

  Person checkCommaPoint(){
    try{
      if(weightt!.contains(",") || heightt!.contains(",")){
        weightt = weightt!.replaceAll(",", ".");
        //print(weightt);

        heightt = heightt!.replaceAll(",", ".");
        //print(heightt);
      }
    }
    catch(e){
      stdout.write("there was an error $e! \n");
    }

    double? weightty = double.tryParse(weightt ?? '0.00');
    //print("there ${weightty}");

    double? heightty = double.tryParse(heightt ?? "0.00");
    //print("there ${heightty}");

    if(weightty! <= 0 || heightty! <= 0 || weightty == null || heightty == null){
      throw Exception("There is an error! Weight or Height should be grater than zero! ");
    }

    double bmi = weightty / ( pow(heightty, 2) );
    //
    // logic right here
    //
    stdout.write('The result is ${bmi.toStringAsFixed(2)}');

    return Person(namee: "Cauculus", weightt: weightt, heightt: heightt );
  }
}

