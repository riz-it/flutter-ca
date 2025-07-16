import 'dart:convert';

import 'package:flutter_ca/api/urls.dart';
import 'package:flutter_ca/core/error/exceptions.dart';
import 'package:flutter_ca/modules/authentication/domain/entities/user_entity.dart';
import 'package:http/http.dart' as http;

abstract class UserRemoteDataSource {
  Future<UserEntity> findByUsername(String username);
}

class UserRemoteDataSourceImpl implements UserRemoteDataSource {
  final http.Client client;

  UserRemoteDataSourceImpl(this.client);

  @override
  Future<UserEntity> findByUsername(String username) async {
    Uri url = Uri.parse('${URLs.baseUrl}/auth');

    final Map<String, dynamic> requestBody = {'username': username};

    final response = await client
        .post(
          url,
          headers: {
            'Content-Type': 'application/json',
            'Accept': 'application/json',
          },
          body: jsonEncode(requestBody),
        )
        .timeout(const Duration(seconds: 3));

    if (response.statusCode == 200) {
      UserEntity user = jsonDecode(response.body);
      return user;
    } else if (response.statusCode == 404) {
      throw NotFoundException();
    } else {
      throw ServerException();
    }
  }
}
