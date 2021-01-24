import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:companion_health/companion_health.dart';

void main() {
  const MethodChannel channel = MethodChannel('companion_health');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });
}
