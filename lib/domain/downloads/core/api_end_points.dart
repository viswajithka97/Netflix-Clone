import 'package:netflix/core/strings.dart';
import 'package:netflix/infrastructure/api_key.dart';

class ApiEndPoits {
  static const downloads = "${baseUrl}/trending/movie/week?api_key=${API_KEY}";
  static const search = "${baseUrl}/search/movie?api_key=${API_KEY}&query=";
  static const hotAndNewMovie = "${baseUrl}/discover/movie?api_key=${API_KEY}";
  static const hotAndNewTv = "${baseUrl}/discover/tv?api_key=${API_KEY}";
}
