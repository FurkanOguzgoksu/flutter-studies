class Meal {
  final String? strMeal;
  final String? strCategory;

  Meal({this.strMeal, this.strCategory});

  factory Meal.fromJson(Map<String, dynamic> json) {
    return Meal(strMeal: json['strMeal'], strCategory: json['strCategory']);
  }
}
