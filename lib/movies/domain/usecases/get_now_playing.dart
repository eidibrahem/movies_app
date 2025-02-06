// ignore_for_file: public_member_api_docs, sort_constructors_first


import '../entities/movie.dart';
import '../repository/base_movie_repository.dart';

class GetNowPlayingUesecase {
 final BaseMovieRepository baseMovieRepository ; 
  GetNowPlayingUesecase({
    required this.baseMovieRepository,
  });

 Future<List<Movie>> execute()async{
 return await baseMovieRepository.getNowPlaying();
  }

}
