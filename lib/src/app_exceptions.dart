/// generic app exception
class AppException implements Exception {
  /// human readable title of the problem
  final String title;

  /// human readable description of the problem that happened
  final String description;
  const AppException(this.title, this.description);

  @override
  String toString() {
    return '$runtimeType(title: $title, description: $description)';
  }
}

/// thrown when a trying to use a service for which access is denied
/// for the application
///
/// example: Use of geolocation when the user denied access
class PermissionNotGrantedException extends AppException {
  const PermissionNotGrantedException({
    String description =
        'You did not allow this application to perform the requested action',
  }) : super('Permission Not Granted', description);
}

/// thrown when a service has been disabled
///
/// example: Use of geolocation while the user has disabled geolocation in settings
class ServiceUnavailableException extends AppException {
  const ServiceUnavailableException({
    String description = 'The requested service is unavailable or disabled',
  }) : super('Service disabled', description);
}

/// thrown when the operation could not be transmitted over the network
class NetworkFailureException extends AppException {
  final String? code;
  const NetworkFailureException({
    this.code,
    String description = 'network failure, request could not finish',
  }) : super('Network Failure', description);
}

/// thrown when an input is invalid
class InvalidInputException extends AppException {
  final String input;

  const InvalidInputException(
    this.input, {
    String description = 'The input provided was invalid',
  }) : super('Invalid input: $input', description);
}

/// thrown when an user is unauthorized to do an action
class UnauthorizedException extends AppException {
  UnauthorizedException({
    String description = 'You do not have the necessary permission',
  }) : super('Unauthorized', description);
}

/// thrown when a resource was not found
class NotFoundException extends AppException {
  NotFoundException({String description = 'Resource could not be found'})
      : super('Not Found', description);
}

/// thrown when an action was cancelled before finishing
class ActionCancelledException extends AppException {
  ActionCancelledException({
    String description = 'Action was cancelled before being processed',
  }) : super('Action cancelled', description);
}
