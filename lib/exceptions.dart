import 'dart:io';
import 'person.dart';

class Exceptions{
  String? weightt;
  String? heightt;

  Person checkCommaPoint(){
    try{
      if(weightt!.contains(",") || heightt!.contains(",")){
        weightt = weightt!.replaceAll(",", ".");
        print(weightt);

        heightt = heightt!.replaceAll(",", ".");
        //print(heightt);
      }
    }
    catch(e){
      stdout.write("there was an error $e! \n");
    }

    return Person(weightt: weightt, heightt: heightt);
  }
}