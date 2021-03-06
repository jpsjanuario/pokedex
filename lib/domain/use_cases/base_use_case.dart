import 'package:dartz/dartz.dart';
import 'package:pokedex/domain/entities/failure.dart';

abstract class UseCase<Type, Params> {
  Future<Either<Failure, Type>> call(Params params);
}

class NoParams {
  const NoParams();
}

class UrlParams {
  final String url;

  UrlParams(this.url);
}
