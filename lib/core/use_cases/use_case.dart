import 'package:fpdart/fpdart.dart';

import '../errors/failure.dart';

abstract class UseCase<T,Params>{
  Future<Either<Failure,T>> call([Params params]);
}