class ApiEndPoints {
  static const String baseUrl = 'http://testprostep0-001-site1.etempurl.com';
  static _AuthEndPoints authEndpoints = _AuthEndPoints();
}

class _AuthEndPoints {
  final String registerEmail = '/api/Account/Create';
  final String loginEmail = '/api/Account/LogIn';
}
