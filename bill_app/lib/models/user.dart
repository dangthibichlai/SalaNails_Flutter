class User {
  static int _nextId = 0;
  int _id;
  String? _name;
  String? _email;
  String _password;
  String _phone;
  String? _address;
  String? _avatar;
  User({
    int? id,
    String? name,
    String? email,
    String? password,
    String? phone,
    String? address,
    String? avatar,
  })  : _id = id ?? _nextId++,
        _name = name,
        _email = email,
        _password = password ?? '',
        _phone = phone ?? '',
        _address = address,
        _avatar = avatar;
 
}
