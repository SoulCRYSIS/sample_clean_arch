class ShowableException {
  final String title;
  final String description;

  ShowableException(this.title, this.description);
}

class ServerProblemException extends ShowableException {
  ServerProblemException()
      : super('Failed to connect to server', 'Please check your internet and try again.');
}
