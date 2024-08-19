import 'package:freezed_annotation/freezed_annotation.dart';

part 'movie.freezed.dart';

//menggunakan fromJSON karena nama data entitas di vscode dan APi berbeda contoh:
//vscode = posterPath
//api = poster_path
@freezed
class Movie with _$Movie {
  const factory Movie({
    required int id,
    required String title,
    String? posterPath,
  }) = _Movie;

  factory Movie.fromJSON(Map<String, dynamic> json) => Movie(
      id: json['id'], title: json['title'], posterPath: json['poster_path']);
}
