import 'package:flix_id/domain/entities/movie.dart';
import 'package:flix_id/presentation/misc/constants.dart';
import 'package:flutter/material.dart';

//background akan ada 2 layer, 1 laayer untuk background film dan layer 2 untuk gradaasi
List<Widget> background(Movie movie) => [
      Image.network(
        'https://image.tmdb.org/t/p/w500${movie.posterPath}',
        fit: BoxFit.cover,
        height: double.infinity,
        width: double.infinity,
      ),
      Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
          backgroundPage.withOpacity(1),
          backgroundPage.withOpacity(0.7)
        ], begin: const Alignment(0, 0.3), end: Alignment.topCenter)),
      )
    ];
