import 'package:teste/exceptions.dart';

import 'reading.dart';
import 'person.dart';

void main(){
  var inputs = Reading();
  Person person = inputs.toRead();

  var caveat = Exceptions();
  caveat.weightt = person.weightt;
  caveat.heightt = person.heightt;
  Person saveguard = caveat.checkCommaPoint();

}


