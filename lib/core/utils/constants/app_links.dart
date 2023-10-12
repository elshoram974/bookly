abstract class AppLinks {
  static const String _baseUrl = 'https://www.googleapis.com/books/v1';

  static const String _volumes = '$_baseUrl/volumes';
  static const String featureBooksEndPoint    = '$_volumes?q=programming';
  static const String suggestionBooksEndPoint = '$_volumes?sorting=newest&q=programming';
}
