import 'package:flutter/cupertino.dart';
import 'package:number_to_words/number_to_words.dart';
import 'package:provider/provider.dart';
class IncrementValue with ChangeNotifier {
  int number = 0;
  String value = "Zero";

  String get getValue=> value;
  IncrementValue() {}

  void updateValue() {
    try {
      number++;
      value = NumberToWord().convert('en-in', number);
      notifyListeners();
    } catch (e) {
      print(e);
    }
  }

  void resetValue() {
    number = 0;
    value = "Zero";
    notifyListeners();
  }
}
