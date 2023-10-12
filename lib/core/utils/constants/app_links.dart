abstract class AppLinks {
  static const String _baseUrl = 'https://www.googleapis.com/books/v1';

  static const String _volumes = '$_baseUrl/volumes';
  static const String featureBooks    = '$_volumes?q=programming';
  static const String suggestionBooks = '$_volumes?sorting=newest&q=programming';
}
