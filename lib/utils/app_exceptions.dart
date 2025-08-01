class AppException implements Exception {
  final _message;
  final _prefix;

  AppException([this._message, this._prefix]);

  String get message => _message;

  String get pefix => _prefix;

  @override
  String toString() => '$_prefix : $_message';
}

class BadRequestException extends AppException {
  BadRequestException([message]) : super(message, 'Invalid Request');
}

class UnauthorizedException extends AppException {
  UnauthorizedException([message]) : super(message, 'Unauthorized');
}

class ForbiddenException extends AppException {
  ForbiddenException([String? message]) : super(message, 'Forbidden');
}

class NotFoundException extends AppException {
  NotFoundException([String? message]) : super(message, 'Not Found');
}

class ConflictException extends AppException {
  ConflictException([String? message]) : super(message, 'Conflict');
}

class InternalServerErrorException extends AppException {
  InternalServerErrorException([String? message])
      : super(message, 'Internal Server Error');
}

class ServiceUnavailableException extends AppException {
  ServiceUnavailableException([String? message])
      : super(message, 'Service Unavailable');
}

class InvalidInputException extends AppException {
  InvalidInputException([String? message]) : super(message, 'Invalid Input');
}

class FetchDataException extends AppException {
  FetchDataException([String? message])
      : super(message, 'Error During Communication');
}
