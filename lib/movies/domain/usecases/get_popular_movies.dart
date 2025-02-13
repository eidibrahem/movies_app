import 'package:dartz/dartz.dart';

import '../../../core/error/failure.dart';
import '../entities/movie.dart';
import '../repository/base_movie_repository.dart';

class GetPopularMoviesUesecase {

 final BaseMovieRepository baseMovieRepository ; 
  GetPopularMoviesUesecase(this.baseMovieRepository,
  );
Future< Either< Failure, List<Movie>>>execute()async{
 return await baseMovieRepository.getPopularMovies();
  }

}