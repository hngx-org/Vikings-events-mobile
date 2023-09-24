// ignore_for_file: deprecated_member_use

import 'package:dio/dio.dart';
import 'package:event_app/core/constants/constants.dart';
import 'package:event_app/data/local/secure_storage_service.dart';
import 'package:event_app/data/services/auth_service.dart';
import 'package:event_app/data/services/error_service.dart';
import 'package:event_app/presentaions/controllers/base_controller.dart';
import 'package:event_app/presentaions/model/auth_model.dart';
import 'package:event_app/utils/locator.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final authControllerProvider = ChangeNotifierProvider<AuthController>((ref) {
  return AuthController();
});

class AuthController extends BaseChangeNotifier {
  final authService = AuthService();

  Future<bool> authenticate() async {
    loadingState = LoadingState.loading;

    try {
      final res = await authService.auth(
        googleId: 'uweoud8budwe8do0',
        email: 'talk2engineerdavid@gmail.com ',
        picture:
            'https://res.cloudinary.com/ol4juwon/image/upload/v1695493954/test/xjcovb2hbay64h3ayt4r.jpg',
        name: 'Manu not nited',
      );
      if (res.statusCode == 200) {
        final data = authModelFromJson(res.data);
        await locator<SecureStorageService>().write(
          key: EnvStrings.token,
          value: data.accessToken ?? '',
        );
        loadingState = LoadingState.idle;
        //TODO: Marcus, save user's details to local storage
        return true;
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
