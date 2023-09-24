// ignore_for_file: deprecated_member_use

import 'package:dio/dio.dart';
import 'package:event_app/core/constants/constants.dart';
import 'package:event_app/data/local/secure_storage_service.dart';
import 'package:event_app/data/services/auth_service.dart';
import 'package:event_app/data/services/error_service.dart';
import 'package:event_app/presentaions/controllers/base_controller.dart';
import 'package:event_app/presentaions/model/auth_model.dart';
import 'package:event_app/presentaions/model/google_signin.dart';
import 'package:event_app/utils/locator.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

final authControllerProvider = ChangeNotifierProvider<AuthController>((ref) {
  return AuthController();
});

class AuthController extends BaseChangeNotifier {
  final authService = AuthService();
  final SecureStorageService secureStorageService =
      SecureStorageService(secureStorage: const FlutterSecureStorage());

  Future<bool> authenticate() async {
    loadingState = LoadingState.loading;

    try {
      final userData = await signIn();

      if (userData?['id'] != null) {
        final res = await authService.auth(
          googleId: userData?['id'],
          email: userData?['email'],
          picture: userData?['picture'],
          name: userData?['name'],
        );
        if (res.statusCode == 200) {
          final data = authModelFromJson(res.data);
          await locator<SecureStorageService>().write(
            key: EnvStrings.token,
            value: data.accessToken ?? '',
          );
          loadingState = LoadingState.idle;

          //TODO: Marcus, save user's details to local storage
          await saveUserDetails(
            secureStorageService,
            userData['name'],
            userData['picture'],
            userData['email'],
          );
          return true;
        }
      } else {
        throw Error();
      }
    } on DioError catch (e) {
      loadingState = LoadingState.error;
      ErrorService.handleErrors(e);
    } catch (e) {
      loadingState = LoadingState.error;
      ErrorService.handleErrors(e);
    }
    return false;
  }
}
