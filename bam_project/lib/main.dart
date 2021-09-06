import 'package:bam_project/controllers/firebase/auth_services.dart';
import 'package:bam_project/counter/cubit/counter_cubit.dart';
import 'package:bam_project/counter_observer.dart';
import 'package:bam_project/wrapper.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';

void main() async {
  Bloc.observer = CounterObserver();
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return MultiProvider(
      providers: [
        Provider<AuthServices>(
          create: (context) => AuthServices(FirebaseAuth.instance),
        ),
        StreamProvider(
          create: (context) => context.read<AuthServices>().authStateChanges,
          initialData: null,
        ),
        BlocProvider(
          create: (_) => CounterCubit(),
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Wrapper(),
      ),
    );
  }
}
