class ApiEndPoints {
  static const String baseUrl = 'http://testcaro1234-001-site1.btempurl.com';
  static var authEndpoints = _AuthEndPoints();
}

class _AuthEndPoints {
  final String registerEmail = '/api/Account/Create';
  final String loginEmail = '/api/Account/LogIn';
  final String getmaincategories = '/api/Category/GetMainCategories';
    final String choosemycategories  = '/api/Category/App/ChooseMyCategories';

}
