


import 'package:ecommerce/layout/app_layout.dart';
import 'package:ecommerce/layout/app_states.dart';

import '../layout/app_cubit.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../shared/bloc_observer.dart';
import 'package:flutter/material.dart';

void main() async{

  WidgetsFlutterBinding.ensureInitialized();

  //Bloc.observer = MyBlocObserver();

  BlocOverrides.runZoned(
        () {},
    blocObserver: MyBlocObserver(),
  );

  runApp(const MyApp());

}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {

    return MultiBlocProvider(
      providers: [
        BlocProvider(
            create:(context)=>AppCubit(),
        ),
      ],
      child: BlocConsumer<AppCubit,AppStates>(
       listener: (context,state){},
        builder: (context, state){
         return MaterialApp(
           debugShowCheckedModeBanner: false,
           title: 'E-commerce App',
           theme: ThemeData(
             primarySwatch: Colors.blue,
           ),
           home: const AppLayout(),
         );
        },
      ),
    );
  }
}

