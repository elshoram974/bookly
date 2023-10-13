import '../errors/status.dart';

abstract class UseCase<T,P> {
  Future<({Status status, T data})> call(P param);
}
