import 'package:app_exceptions/app_exceptions.dart' as ex;

void main() {
  ex.AppException('Generic', 'this is a generic exception');
  ex.UnauthorizedException(
      description: 'You were not authorized to access this resource');
  ex.InvalidInputException('email', description: 'invalid email');
  ex.ActionCancelledException(
      description: 'The action was canceled by the user');
  ex.NotFoundException(description: 'the resource was not found');
  ex.PermissionNotGrantedException(
      description: 'Permission for geolocation not granted');
  ex.ServiceUnavailableException(
      description: 'The audio service is unavailable');
}
