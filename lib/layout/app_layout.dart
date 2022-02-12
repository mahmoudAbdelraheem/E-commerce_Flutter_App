import '../layout/app_cubit.dart';
import '../layout/app_states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppLayout extends StatelessWidget {
  const AppLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit,AppStates>(
      listener: (context,state){},
      builder: (context,state){
        //variable for app cubit
        var cubit= AppCubit.get(context);
        return  Scaffold(
          appBar: AppBar(
            title: const Text("E-commerce App"),
          ),

          // display the selected screen
          body:  cubit.bottomNavScreen[cubit.currentIndex],

          bottomNavigationBar: BottomNavigationBar(
            onTap: (int index){
              cubit.changeBottomNav(index);
            },
            currentIndex: cubit.currentIndex,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: "Home",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.favorite),
                label: "Favorite",
              ),
            ],
          ),
        );
      },

    );
  }
}
