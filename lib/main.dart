import 'package:flutter/material.dart';
import 'package:news/WebView%20Screen.dart';
import 'Loading Screen.dart';
import 'Home Screen.dart';

void main()=>runApp(MyApp());

class  MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute:LoadingScreen.id,
      routes: {
        LoadingScreen.id:(context)=>LoadingScreen(),
        HomeScreen.id:(context)=>HomeScreen(),
        WebViewScreen.id:(context)=>WebViewScreen(),
      },
    );
  }
}
