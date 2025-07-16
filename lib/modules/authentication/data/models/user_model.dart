import 'package:flutter_ca/modules/authentication/domain/entities/user_entity.dart';

class UserModel extends UserEntity {
  const UserModel({
    required super.id,
    required super.fullName,
    required super.email,
    required super.phone,
    required super.username,
    required super.image,
    required super.role,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
    id: json["id"],
    fullName: json["fullName"],
    email: json["email"],
    phone: json["phone"],
    username: json["username"],
    image: json["image"],
    role: json["role"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "fullName": fullName,
    "email": email,
    "phone": phone,
    "username": username,
    "image": image,
    "role": role,
  };

  UserEntity get toEntity => UserEntity(
    id: id,
    fullName: fullName,
    email: email,
    phone: phone,
    username: username,
    image: image,
    role: role,
  );
}
