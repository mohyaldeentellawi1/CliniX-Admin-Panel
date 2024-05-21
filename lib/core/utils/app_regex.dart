class AppRegex {
  static bool urlValidate(String url) {
    return RegExp(r'^https://(?:www\.|m\.)?youtube\.com/watch.*').hasMatch(url);
  }
}
