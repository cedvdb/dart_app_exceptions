Micro dart library that expose generic exceptions.

The goal of this library is to for the end user to rethrow exceptions of other libraries with
the same common AppException. This way it's possible to make all exceptions
that are supposed to be catched inherit from the same base class.
This is useful for expample if you want to display a toast message on all
Unauthorized exceptions.


## Usage


```dart
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
```
