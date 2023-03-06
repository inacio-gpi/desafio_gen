abstract class Failure implements Exception {
  String get message;
}

class ServerFailure extends Failure {
  @override
  final String message;

  ServerFailure({required this.message});
}
