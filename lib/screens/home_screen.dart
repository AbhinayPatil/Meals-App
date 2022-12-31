import 'package:flutter/material.dart';
import 'package:meals_app/dummy_data.dart';
import 'package:meals_app/screens/category_wise_meals.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      child: GridView(
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200,
            childAspectRatio: 1,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
          ),
          children: DUMMY_CATEGORIES.map((catData) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {
                  Navigator.of(context).pushNamed('/category_wise_meals',
                      arguments: {'id': catData.id, 'title': catData.title});
                },
                borderRadius: const BorderRadius.all(Radius.circular(20)),
                splashColor: Theme.of(context).primaryColor,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(20)),
                    gradient: LinearGradient(
                      colors: [
                        catData.color.withOpacity(.5),
                        catData.color,
                      ],
                    ),
                  ),
                  child: Center(child: Text(catData.title)),
                ),
              ),
            );
          }).toList()),
    );
  }
}
