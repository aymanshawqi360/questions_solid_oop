class UserModel {
  String _name;
  int _age;
  String _email;

  UserModel({required String name, required int age, required String email})
    : _name = name,
      _age = age,
      _email = email;

  String get name => _name;
  int get age => _age;
  String get email => _email;
  set name(String name) => _name = name;
  set age(int age) => _age = age;
}
