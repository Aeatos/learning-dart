void main() {
//Example of a list
  List<String> family = [
    "Phill",
    "Mamica",
    "Elias",
    "Cody the Star of the show"
  ];

  List<String> fruits = [
    "Apple",
    "Strawberry",
    "Banana",
    "Lime",
    "Avocado",
    "Grape"
  ];

  List<String> colors = ["Red", "Red", "Yellow", "Green", "Green", "Purple"];

  var secondname = 1;
  var mamicaIndex = family.indexOf("Mamica");

  print(family);

  print(
      "The members of my family are ${family.sublist(0, family.length - 1).join(", ")} and ${family.last}.");

  List<int> ages = [23, 48, 26, 0];
  print("And they're ${ages.join(", ")} years old.");

  print(
      "Next year they'll be: ${ages.map((age) => age + 1).toList().join(", ")} years old");

  print("And combined they are ${ages.reduce(
    (value, element) => value + element,
  )} years old.");

  family.forEach((member) {
    int index = family.indexOf(member);
    int age = ages[index];
    print("${member} you'll be ${age + 1} next year.");
  });

  print(family.firstWhere((nenem){
    int index = family.indexOf(nenem);
    int age = ages[index];
    return age == 0;
  }) + " is nenem!");
}
