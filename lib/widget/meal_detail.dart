import 'package:flutter/material.dart';

import 'package:meal_app/models/meal.dart';

class MealDetail extends StatelessWidget {
  const MealDetail({required this.meal, super.key});

  final Meal meal;

  String get Ingridients {
    return meal.ingredients.toString();
  }
  String get Steps {
    return meal.steps.toString();
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(8),
      child: Column(
        children: [
          Text(
            meal.title,
            textAlign: TextAlign.center,
            style: const TextStyle(
                fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          const SizedBox(
            height: 20,
          ),
          Text('Ingridients : $Ingridients'),
          const SizedBox(height: 5,),
          Text(Steps)
        ],
      ),
    );
  }
}
