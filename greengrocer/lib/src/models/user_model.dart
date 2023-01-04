class UserModel {
  String? name;
  String? email;
  String? phone;
  String? cpf;
  String? passwod;
  String? id;
  String? token;

  UserModel({
    required this.name,
    required this.email,
    required this.phone,
    required this.cpf,
    required this.passwod,
    required this.id,
    required this.token,
  });

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
        name: map['fullname'],
        email: map['email'],
        phone: map['phone'],
        cpf: map['cpf'],
        passwod: map['passwod'],
        id: map['id'],
        token: map['token']);
  }

  Map<String, dynamic> toMap() {
    return {
      'fullname': name,
      'email': email,
      'phone': phone,
      'cpf': cpf,
      'passwod': passwod,
      'id': id,
      'token': token
    };
  }

  @override
  String toString(){
    return 'name: $name | cpf: $cpf';
  }
}
