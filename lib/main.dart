import 'person.dart';
import 'reading.dart';
import 'exceptions.dart';

void main(){
  var inputs = Reading();
  Person person = inputs.toRead();

  var caveat = Exceptions();
  caveat.namee = person.namee;
  caveat.weightt = person.weightt;
  caveat.heightt = person.heightt;
  Person saveguard = caveat.checkCommaPoint();


}

