import 'package:flutter_riverpod/flutter_riverpod.dart';

class SettingsViewModel extends StateNotifier<SettingsData> {
  SettingsViewModel(SettingsData initialState) : super(initialState);

  // Methods to update the data
  void updateTitle(String newTitle) {
    state = state.copyWith(title: newTitle);
  }

  void updateEmail(String newEmail) {
    state = state.copyWith(email: newEmail);
  }

  Future<void> logout() async {
    // logout logic here
  }
}

class SettingsData {
  SettingsData({this.title = '', this.email = ''});

  String title = 'Tam';
  String email = 'Talk2tamara@gmail.com';

  SettingsData copyWith({String? title, String? email}) {
    return SettingsData(
      title: title ?? this.title,
      email: email ?? this.email,
    );
  }
}

final settingsViewModelProvider =
    StateNotifierProvider<SettingsViewModel, SettingsData>((ref) {
  // I initialized the initial state with dummy data
  final initialData =
      SettingsData(title: 'Tam', email: 'Talk2tamara@gmail.com');
  return SettingsViewModel(initialData);
});
