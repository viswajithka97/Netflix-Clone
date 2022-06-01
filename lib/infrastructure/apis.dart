import 'dart:convert';

import 'package:netflix/presentation/home/category_model/categories/categories.dart';
import 'package:netflix/presentation/home/category_model/categories/genre.dart';
import 'package:http/http.dart' as http;
import 'package:netflix/presentation/home/discover_tv/discover_model.dart';

abstract class ApiCalls {
  Future category();
  Future discoverTV();
}

class MovieDB extends ApiCalls {
  @override
  Future<List<Genre>> category() async {
    final result = await http.get(Uri.parse(
        'https://api.themoviedb.org/3/genre/movie/list?api_key=9431fb06c74cd222c8e46d576d2b4dfe&language=en-US'));
    Map<String, dynamic> map = json.decode(result.body);
    final data = Category.fromJson(map);
    return data.genres!;
  }

  @override
  Future<List<Results>> discoverTV() async {
    final result = await http.get(Uri.parse(
        "https://api.themoviedb.org/3/trending/all/day?api_key=9431fb06c74cd222c8e46d576d2b4dfe"));
    Map<String, dynamic> map = json.decode(result.body);
    final data = Discover.fromJson(map);
    print(data.results);
    return data.results!;
  }
}
