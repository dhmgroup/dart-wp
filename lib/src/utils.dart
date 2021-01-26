import 'package:html/parser.dart' show parse;
import 'package:logger/logger.dart';

/// A class of useful utilities
abstract class Utils {
  static Logger logger = Logger();
  static String renderHtml(String html) => parse(html).body.text;
}
