// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:movies_app/core/network/error_message_model.dart';

class ServerException implements Exception {
final ErrorMessageModel errorMessageModel ;

 const  ServerException({required this.errorMessageModel});
 
}
class LocalDataSourceException implements Exception {
 final String message ;
 const  LocalDataSourceException({
    required this.message,
  });
  
}
