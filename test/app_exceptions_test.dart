import 'package:app_exceptions/app_exceptions.dart' as ex;
import 'package:test/test.dart';

void main() {
  group('AppExceptions', () {
    test('all', () {
      expect(
        ex.AppException('Generic', 'this is a generic exception'),
        isA<ex.AppException>(),
      );
      expect(
        ex.UnauthorizedException(
            description: 'You were not authorized to access this resource'),
        isA<ex.UnauthorizedException>(),
      );
      expect(
        ex.InvalidInputException('email', description: 'invalid email'),
        isA<ex.InvalidInputException>(),
      );
      expect(
        ex.ActionCancelledException(
            description: 'The action was canceled by the user'),
        isA<ex.ActionCancelledException>(),
      );
      expect(
        ex.NetworkFailureException(
          code: '400',
          description: 'Bad request',
        ),
        isA<ex.NetworkFailureException>(),
      );
      expect(
        ex.NotFoundException(description: 'the resource was not found'),
        isA<ex.NotFoundException>(),
      );
      expect(
        ex.PermissionNotGrantedException(
            description: 'Permission for geolocation not granted'),
        isA<ex.PermissionNotGrantedException>(),
      );
      expect(
        ex.ServiceUnavailableException(
            description: 'The audio service is unavailable'),
        isA<ex.ServiceUnavailableException>(),
      );
    });
  });
}
