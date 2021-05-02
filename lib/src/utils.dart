import 'package:html/parser.dart' show parse;
import 'package:logger/logger.dart';

/// A class of useful utilities
///
/// `[logger]` is used for better console logs
///
/// `[renderHtml]` is used to parse any `html` string
class Utils {
  static Logger logger = Logger();
  static String renderHtml(String? html) => parse(html).body!.text;
}
