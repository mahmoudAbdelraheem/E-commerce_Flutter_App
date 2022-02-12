

import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import '../layout/app_states.dart';
import '../modules/category_screen.dart';
import '../modules/favorites_screen.dart';
import '../modules/home_screen.dart';
import '../modules/setting_screen.dart';

class AppCubit extends Cubit<AppStates>{
AppCubit (): super (AppInitialState());

static AppCubit get(BuildContext context) => BlocProvider.of(context);

// for bottom nav bar
int currentIndex=0;

 List<Widget> bottomNavScreen=[
  const HomeScreen(), // screen for all products
  const FavoriteScreen(),
   const CategoryScreen(),
   const SettingScreen(),
];

 void changeBottomNav(int index){
   currentIndex=index;
   emit(AppChangeBottomNavState());
 }

}