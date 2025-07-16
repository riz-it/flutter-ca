import 'package:dartz/dartz.dart';
import 'package:flutter_ca/core/error/failures.dart';
import 'package:flutter_ca/modules/authentication/domain/entities/user_entity.dart';
import 'package:flutter_ca/modules/authentication/domain/repositories/user_repository.dart';

class FindByUsernameUseCase {
  final UserRepository _repository;

  FindByUsernameUseCase(this._repository);
  Future<Either<Failure, UserEntity>> call(String username) {
    return _repository.findByUsername(username);
  }
}
