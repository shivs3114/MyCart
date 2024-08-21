import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled/model/Cart_model.dart';
import 'package:untitled/pages/HomePage.dart';
import 'package:untitled/pages/IntroPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CartModel(),
      child: MaterialApp(
          theme: ThemeData(primaryColor: Colors.green),
          debugShowCheckedModeBanner: false,
          home: IntroPage()
          //,
          ),
    );
  }
}
