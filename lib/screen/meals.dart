import 'package:flutter/material.dart';

import 'package:meal_app/models/meal.dart';
import 'package:meal_app/screen/meal_details.dart';
import 'package:meal_app/widget/meals_item.dart';

class MealsScreen extends StatelessWidget {
  const MealsScreen(
      {this.title,
      required this.onToogleFavorite,
      required this.meals,
      super.key});

  final String? title;
  final List<Meal> meals;
  final void Function(Meal meal) onToogleFavorite;

  void selectedMeal(BuildContext context, Meal meal) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: ((context) => MealDetailsScreen(
              meal: meal,
              onToogleFavorite: onToogleFavorite,
            )),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    Widget content = Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'Uh Oh... There is nothing here',
            textAlign: TextAlign.center,
            style: Theme.of(context)
                .textTheme
                .headlineLarge!
                .copyWith(color: Theme.of(context).colorScheme.onBackground),
          ),
          const SizedBox(
            height: 16,
          ),
          Text(
            'Try selecting different category',
            style: Theme.of(context)
                .textTheme
                .bodyLarge!
                .copyWith(color: Theme.of(context).colorScheme.onBackground),
          ),
        ],
      ),
    );

    if (meals.isNotEmpty) {
      content = ListView.builder(
        itemCount: meals.length,
        itemBuilder: (ctx, index) => MealsIteme(
          meal: meals[index],
          onSelectedMeal: (meal) {
            selectedMeal(context, meal);
          },
        ),
      );
    }

    if (title == null) {
      return content;
    }
    return Scaffold(
      appBar: AppBar(
        title: Text(title!),
      ),
      body: content,
    );
  }
}
