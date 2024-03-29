import 'package:case_study/bloc/autth_bloc.dart';
import 'package:case_study/cubit/UserDetailsCubit/UserDetailsCubit.dart';
import 'package:case_study/firebase_options.dart';
import 'package:case_study/pages/AuthScreen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => AuthBloc()),
        BlocProvider(create: (context) => UserDetailsCubit()),
      ],
      child: const MaterialApp(
        title: 'Demo',
        debugShowCheckedModeBanner: false,
        home: AuthScreen(),
      ),
    );
  }
}
