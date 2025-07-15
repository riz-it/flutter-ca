import 'package:dartz/dartz.dart';
import 'package:flutter_ca/core/error/failures.dart';
import 'package:flutter_ca/modules/authentication/domain/entities/user_entity.dart';

abstract class UserRepository {
  Future<Either<Failure, UserEntity>> findByUsername(String username);
  Future<Either<Failure, UserEntity>> findByEmail(String email);
}