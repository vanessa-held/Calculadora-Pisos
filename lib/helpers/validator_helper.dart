import 'parse_helper.dart';

const kRequiredField = 'Campo obrigatório';
const kGreatZero = 'Digite um número maior que Zero';

class ValidatorHelper {
  static String isNotEmptyNumber(String text) {
    return text.isEmpty ? kRequiredField : null;
  }

  static String isGreatZero(String text) {
    return ParseHelper.toDouble(text) <= 0 ? kGreatZero : null;
  }
}
