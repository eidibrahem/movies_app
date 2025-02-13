// ignore_for_file: public_member_api_docs, sort_constructors_first


import 'package:dartz/dartz.dart';

import '../../../core/error/failure.dart';
import '../entities/movie.dart';
import '../repository/base_movie_repository.dart';

class GetNowPlayingUesecase {
 final BaseMovieRepository baseMovieRepository ; 
  GetNowPlayingUesecase(
  this.baseMovieRepository
  );

Future< Either< Failure, List<Movie>>>execute()async{
 return await baseMovieRepository.getNowPlayingMovies();
  }

}
