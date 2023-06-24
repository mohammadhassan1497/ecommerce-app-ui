class ServerException implements Exception {}

class RemoteException implements Exception {
  final String message;

  RemoteException(this.message);

  @override
  String toString() => 'RemoteException: $message';
}
