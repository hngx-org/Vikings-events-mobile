import 'package:stacked/stacked.dart';

class SettingsViewModel extends BaseViewModel {
  final String _title = 'Tam';
  String get title => _title;
  final String _email = 'Talk2tamara@gmail.com';
  String get email => _email;

  Future<void> logout() async {
    //logout logic
    //navigate to login screen
  }
}
