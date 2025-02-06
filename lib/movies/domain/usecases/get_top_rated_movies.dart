import '../entities/movie.dart';
import '../repository/base_movie_repository.dart';

class GetTopRatedMoviesUesecase {

 final BaseMovieRepository baseMovieRepository ; 
  GetTopRatedMoviesUesecase({
    required this.baseMovieRepository,
  });

 Future<List<Movie>> execute()async{
 return await baseMovieRepository.getTopRatedMovies();
  }

}