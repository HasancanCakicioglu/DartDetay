





void immutableAndEquality(){
  print(User(name: "ali", age: 5)==User2(name: "ali", age: 5));
  
  print(User2(name: "fatma", age: 6) == User2(name: "fatma", age: 6));

  print(User2(name: "fatma", age: 6) == User2(name: "fatma", age: 66666));
  
}






////////////////

class User {
  final String name;
  final int age;

  const User({required this.name, required this.age});

  User copWith({
    String? name,
    int? age,
  }) =>
      User(name: name ?? this.name, age: age ?? this.age);

  @override
  String toString() => "name = $name - age = $age";
}

///////////////////


class User2 {
  final String name;
  final int age;

  const User2({required this.name, required this.age});

  

  @override
  bool operator == (covariant User2 other){
    if(identical(this,other)){
      return true;
    }

    return other.runtimeType == User2 && other.name == name && other.age == age;
  }

  @override
  int get hashCode => name.hashCode ^ age.hashCode;

}




