import 'package:dartz/dartz.dart';

class LoginRepository {
  
  @override
  Either<LoginFailure, String> login() {
    try {
      
      throw LoginNotFoundFailure();
      return right("righ return bu");
      

    }catch (e) {
      print(e);

      if(e == 403) {
        return left(LoginNotFoundFailure());
      }

      return left(LoginServerErrorFailure(error:"loginservererror 3" ));


    } 
  }


}


class LoginFailure implements Exception{}

class LoginNotFoundFailure extends LoginFailure {}

class LoginServerErrorFailure extends LoginFailure{
  final String error;
  LoginServerErrorFailure({required this.error});
}

