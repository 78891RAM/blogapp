class ApiExecption implements Exception {
  final dynamic message;

  ApiExecption({required this.message});

  @override
  String toString() {
    if (message is String) {
      return message;
    }
    return "errror occured:$message";
  }
}
