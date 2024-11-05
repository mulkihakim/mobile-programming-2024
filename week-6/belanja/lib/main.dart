import 'package:belanja/pages/home_page.dart';
import 'package:belanja/pages/item_page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final GoRouter _router = GoRouter( 
      initialLocation: '/', 
      routes: [ 
        GoRoute( 
          path: '/', 
          builder: (context, state) => HomePage(), 
        ), 
        GoRoute( 
          path: '/item', 
          builder: (context, state) => ItemPage(), 
        ), 
      ], 
    ); 
    return MaterialApp.router( 
      routerConfig: _router, 
      title: 'Belanja', 
      theme: ThemeData( 
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple), 
        useMaterial3: true, ), );
  }
}