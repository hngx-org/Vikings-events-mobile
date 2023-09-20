import 'package:intl/intl.dart';

/// This file contains the extensions for the String class.
extension StringExtensions on String {
  /// This method will return the string with the first letter capitalized.
  String get capitalizeFirstLetter {
    if (isEmpty) return this;
    return toBeginningOfSentenceCase(this).toString();
  }

  /// This method will return the file extension of the string.
  String? get getFileExtension {
    try {
      return split('.').last;
    } catch (e) {
      return null;
    }
  }
}