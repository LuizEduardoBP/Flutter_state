import 'package:flutter/widgets.dart';
import 'package:get/state_manager.dart';

class HomePageProviderController extends ChangeNotifier{
  int number = 0;

  void changeToOne(){
    number = 1;
    notifyListeners();
    print(number);
  }

  void changeToTwo(){
    number = 2;
    notifyListeners();
    print(number);
  }

  void changeToThree(){
    number = 3;
    notifyListeners();
    print(number);
  }
}
