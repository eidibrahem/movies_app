import 'package:equatable/equatable.dart';

class Movie extends Equatable {
  final int id;
  final String title;
  final String backdropPath;
  final List<int> generIds;
  final String overview;
  final double voteAverage;
  final int releaseDate;


 const Movie( {
    required this.id,
    required this.title,
    required this.backdropPath,
    required this.generIds,
    required this.overview,
    required this.voteAverage,
    required this.releaseDate,
  });
  
  @override
  // TODO: implement props
  List<Object?> get props => [id,title,
   backdropPath,
   generIds,
   overview,
   voteAverage,
   releaseDate
   ];
  


}
