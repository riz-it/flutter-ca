// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';

class UserEntity extends Equatable {
  final int id;
  final String fullName;
  final String email;
  final String phone;
  final String username;
  final String image;
  final String role;

  const UserEntity({
    required this.id,
    required this.fullName,
    required this.email,
    required this.phone,
    required this.username,
    required this.image,
    required this.role,
  });

  @override
  List<Object> get props {
    return [
      id,
      fullName,
      email,
      phone,
      username,
      image,
      role,
    ];
  }
}