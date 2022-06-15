class User {
  String name;
  int age;
  String location;

  User(this.name, this.age, this.location);

  Map<String, dynamic> toJson() {
    return {
      "name": name,
      "age": age,
      "location": location,
    };
  }
}

void main() {
  var user1 = User("Rochak", 22, "Balkot");
  User user2 = new User("Codeware", 1, "Koteshowr");
  print(user1.name);
  print(user2.toJson());
  var list = [];
  list.add(user1.toJson());
  list.add(user2.toJson());
  print(list);

  user1.toJson().forEach((key, value) {
    print("$key, $value");
  });
  print("/n");
  user2.toJson().entries.map((entry) {
    print(entry.value);
  }).toList();
}
