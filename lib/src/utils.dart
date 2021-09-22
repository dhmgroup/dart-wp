import 'package:html/parser.dart' show parse;
import 'package:logger/logger.dart';

/// An abstract class of useful utilities
///
/// `[logger]` is used for better console logs
///
/// `[renderHtml]` is used to parse any `html` string
abstract class WPUtils {
  static Logger logger = Logger();

  /// Takes an HTML string and parses it's content
  static String parseHtml(String? html) => parse(html).body!.text;
}
