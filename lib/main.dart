import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:project_1/screen/register.dart';
import 'screen/login.dart';

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
      home: LoginPage(),
      routes: {
        '/login': (ctx) => LoginPage(),
        '/register': (ctx)=> RegisterPage(),
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
