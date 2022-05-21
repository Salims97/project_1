import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
//import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:project_1/screen/bottom_bar.dart';
import 'package:project_1/screen/details.dart';
import 'package:project_1/screen/register.dart';
import 'screen/home.dart';
import 'screen/login.dart';

void main() {
  // WidgetsFlutterBinding.ensureInitialized(); //initialized google ads
  // MobileAds.instance.initialize();

  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: LoginPage(),
      routes: {
        '/login': (ctx) => LoginPage(),
<<<<<<< HEAD
        '/register': (ctx) => RegisterPage(),
        '/home': (context) => Home(),
        '/bottom_bar': (context) => BottomBar(),
        '/details': (context) => Details(),
=======
        '/register': (ctx)=> RegisterPage(),
        '/home' : (context) => Home(),
        '/bottom_bar' :(context) =>const BottomBar(),
        '/details' :(context) => Details(),
>>>>>>> c940bb03426c73422ac0ccf982694fda7fb1da23
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
