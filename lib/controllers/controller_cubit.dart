import 'package:flutter/animation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:state_project/controllers/controller_provider.dart';

class CubitValue extends Cubit<int>{
  CubitValue(): super(0);

  void changeToOne()=>emit(1);
  void changeToTwo()=>emit(2);
  void changeToThree()=>emit(3);
} 