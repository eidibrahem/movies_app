import 'package:dartz/dartz_unsafe.dart';
import 'package:flutter/material.dart';
import 'package:movies_app/movies/data/datasource/movie_remote_data_source.dart';
import 'package:movies_app/movies/data/repository/movie_repository.dart';
import 'package:movies_app/movies/domain/entities/movie.dart';
import 'package:movies_app/movies/domain/repository/base_movie_repository.dart';
import 'package:movies_app/movies/domain/usecases/get_now_playing.dart';

class MovieScreen extends StatefulWidget {
  const MovieScreen({super.key});
@override

  @override
  State<MovieScreen> createState() => _MovieScreenState();
}

class _MovieScreenState extends State<MovieScreen> {
  List<Movie> movies =[];
@override
  void initState() {
    _gitData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,
    );
  }
  void _gitData() async{ 
   
    final result = await GetNowPlayingUesecase( MovieRepository(  MovieRemoteDataSource())).execute();
  result.fold((l){}, (r){
  movies =r ;
  
  });
  
  }
}