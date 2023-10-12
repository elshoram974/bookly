import '../errors/status.dart';

abstract class UseCase<T> {
  Future<({Status status, T data})> call();
}
