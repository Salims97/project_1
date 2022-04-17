import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: const LoginPage(),
      routes: {
        '/login': (ctx)=>const LoginPage(),
        // '/state_provider': (ctx)=>const StateProviderPage(),
        // '/future_provider': (ctx)=>const FutureProviderPage(),
        // '/stream_provider': (ctx)=>const StreamProviderPage(),
        // '/state_notifier': (ctx)=> const StateNotifierPage(),
        // '/change_notifier': (ctx)=>const ChangeNotifierPage(),
        // '/family_primitive': (ctx)=>const FamilyPrimitiveProviderPage(),
        // '/family_object': (ctx)=>const FamilyObjectModifierPage(),
        // '/auto_dispose': (ctx)=>const AutoDisposeModifierPage(),
      },
    );
  }
}


