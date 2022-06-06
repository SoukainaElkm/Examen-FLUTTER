import 'package:examen_flutter/bloc/livre_bloc/livre_bloc.dart';
import 'package:examen_flutter/repositories/adherent_repository.dart';
import 'package:examen_flutter/repositories/livre_repository.dart';
import 'package:examen_flutter/ui/pages/adherentPage.dart';
import 'package:examen_flutter/ui/pages/home.dart';
import 'package:examen_flutter/ui/pages/livresPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/adherent_bloc/adherent_bloc.dart';
import 'bloc/livre_bloc/livre_event.dart';
import 'bloc/livre_bloc/livre_state.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider<LivreBloc>(
            create: (context) => LivreBloc(livreRepository: LivreRepository()),
          ),
          BlocProvider<AdherentBloc>(
            create: (context) =>
                AdherentBloc(adherentRepository: AdherentRepository()),
          ),
        ],
        child: MaterialApp(
          routes: {
            "/livres":(context)=>LivresPage(),
            "/adherents":(context)=>AdherentsPage(),
          },
          title: 'Bibliothèque Publique',
          theme: ThemeData(
            primarySwatch: Colors.grey,
          ),
          home: const MyHomePage(title: 'Bibliothèque Publique BPI'),
        ));
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    this.context.read<LivreBloc>().add(AllLivre());
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
        primarySwatch: Colors.green,
    ),
    routes: {
    "/":(context)=>Home(),
    "/livres":(context)=>LivresPage(),
    "/adherents":(context)=>AdherentsPage(),
    },
    );
  }
}
