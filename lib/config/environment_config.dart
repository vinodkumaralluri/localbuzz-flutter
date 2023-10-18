class EnvironmentConfig {
  static const String BASE_URL = String.fromEnvironment(
    'BASE_URL',
    defaultValue: 'https://api.localbuzz.in',
  );

  // static const String RAZORPAY_KEY = String.fromEnvironment(
  //   'RAZORPAY_KEY',
  //   defaultValue: 'rzp_test_vIAUwhzUmiPqKJ',
  // );

  // static const String SENTRY_DSN = String.fromEnvironment('SENTRY_DSN');
}
