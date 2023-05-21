enum LottieAnimation {
  // dataNotFound(name: 'data_not_found'),
  // empty(name: 'empty'),
  // loading(name: 'loading'),
  // error(name: 'error'),
  // smallError(name: 'small_error'),
  noConnection(name: 'no_connection'),
  noInternet(name: 'no_internet'),
  error404(name: 'error_404');

  final String name;

  const LottieAnimation({required this.name});
}
