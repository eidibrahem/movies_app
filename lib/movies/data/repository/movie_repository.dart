// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dartz/dartz.dart';
import 'package:movies_app/core/error/exceptions.dart';
import 'package:movies_app/core/error/failure.dart';
import 'package:movies_app/movies/domain/entities/movie.dart';
import 'package:movies_app/movies/domain/repository/base_movie_repository.dart';

import '../datasource/movie_remote_data_source.dart';

class MovieRepository extends BaseMovieRepository {
 final BaseMovieRemoteDataSource baseMovieRemoteDataSource ;

  MovieRepository( this.baseMovieRemoteDataSource);

  @override
  Future< Either< Failure, List<Movie>>> getNowPlayingMovies()async {
        final result = await baseMovieRemoteDataSource.getNowPlayingMovies() ;
        try{
     return Right(result);
        }on ServerException catch (f){
          return Left( ServerFailure(f.errorMessageModel.statusMessage));
        }
  }
  
  @override
  Future<Either<Failure, List<Movie>>> getPopularMovies() async {
        final result = await baseMovieRemoteDataSource.getPopularMovies() ;
        try{
     return Right(result);
        }on ServerException catch (f){
          return Left( ServerFailure(f.errorMessageModel.statusMessage));
        }
  }
  
  @override
  Future<Either<Failure, List<Movie>>> getTopRatedMovies() async {
        final result = await baseMovieRemoteDataSource.getTopRatedMovies() ;
        try{
     return Right(result);
        }on ServerException catch (f){
          return Left( ServerFailure(f.errorMessageModel.statusMessage));
        }
  }}