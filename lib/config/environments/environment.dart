import 'package:flutter_dotenv/flutter_dotenv.dart';

class Environment {
  static String serverBaseUrl = dotenv.env['SERVER_BASE_URL'] ?? '';
  static String serverKeyWord = dotenv.env['SERVER_KEY_WORD'] ?? '';
}