import 'package:get/state_manager.dart';

class HomePageGetXController extends GetxController{
  int number = 0;

  void changeToOne(){
    number = 1;
    update();
    print(number);
  }

  void changeToTwo(){
    number = 2;
    update();
    print(number);
  }

  void changeToThree(){
    number = 3;
    update();
    print(number);
  }
}
