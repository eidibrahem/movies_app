import '../entities/movie.dart';
import '../repository/base_movie_repository.dart';

class GetPopularMoviesUesecase {

 final BaseMovieRepository baseMovieRepository ; 
  GetPopularMoviesUesecase({
    required this.baseMovieRepository,
  });

 Future<List<Movie>> execute()async{
 return await baseMovieRepository.getPopularMovies();
  }

}