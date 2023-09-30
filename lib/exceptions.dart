import 'dart:io';

class Exceptions{
  String? weightt;
  String? heightt;

  void checkCommaPoint(){
    try{
      if(weightt!.contains(",") || heightt!.contains(",")){
        weightt = weightt!.replaceAll(",", ".");
        //print(weightt);

        heightt = heightt!.replaceAll(",", ".");
        //print(heightt);
      }
    }
    catch(e){
      stdout.write("there was an error $e!");
    }

  }
}