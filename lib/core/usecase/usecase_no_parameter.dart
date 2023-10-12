import '../errors/failure.dart';

abstract class UseCase<T> {
  Future<(Failure, T)> call();
}
