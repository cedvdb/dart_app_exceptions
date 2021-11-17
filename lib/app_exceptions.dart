/// Micro dart library that expose generic exceptions.
///
/// The goal of this library is to rethrow exceptions of other libraries with
/// the same common AppException. This way it's possible to make all exceptions
/// that are supposed to be catched inherit from the same base class.
///
/// This is useful for expample if you want to display a toast message on all
/// those exceptions
///
library app_exceptions;

export 'src/app_exceptions.dart';
