import 'package:json_annotation/json_annotation.dart';

import 'genre.dart';

part 'categories.g.dart';

@JsonSerializable()
class Category {
	List<Genre>? genres;

	Category({this.genres});

	factory Category.fromJson(Map<String, dynamic> json) {
		return _$CategoryFromJson(json);
	}

	Map<String, dynamic> toJson() => _$CategoryToJson(this);
}
