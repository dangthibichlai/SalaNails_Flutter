class User {
  static final String phoneUse = '10123';
  static final String passwordUse = '123';

  String? phone;
  String? password;
  User({this.phone, this.password});
  User.fromJson(Map<String, dynamic> json) {
    phone = json['phone'];
    password = json['password'];
  }
  Map<String, dynamic> toJson() {
    return {
      'phone': phone,
      'password': password,
    };
  }
}
