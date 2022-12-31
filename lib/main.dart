import 'package:flutter/material.dart';
import 'package:meals_app/screens/bottom_navigator_screen.dart';
import 'package:meals_app/screens/category_wise_meals.dart';
import 'package:meals_app/screens/meal_detail_screen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.pink)
            .copyWith(secondary: Colors.amber),
      ),
      routes: {
        '/': (context) => const BottomNavigator(),
        '/category_wise_meals': (context) => const CategoryWiseMeals(),
        '/meal_detail': (context) => const MealDetail(),
      },
    );
  }
}
