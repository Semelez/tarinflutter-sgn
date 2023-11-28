import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:testflutter/tabPage.dart';
import 'package:testflutter/todo/state.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => Todo(),
      child: const MaterialApp(
        home: TabPage(),
      ),
    ),
  );
}

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

  

//   // This widget is the root of your application.
//   @override
  
//   Widget build(BuildContext context) {

//     final countbloc = BlocProvider(create: (context)=> CountBloc());

//     return MultiBlocProvider(
//         providers: [countbloc],
//         child: const MaterialApp(
//       title: 'Flutter Demo',
//       home: TabPage(),
//     ));
//   }
// }
