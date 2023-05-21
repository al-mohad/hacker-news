// import 'package:html/parser.dart' show parse;
// import 'package:html/dom.dart' as dom;

// String removeHtmlTags(String text) {
//   // Parse the HTML text
//   dom.Document document = parse(text);

//   // Extract the plain text from the parsed HTML
//   String cleanText = parse(document.body!.text).documentElement!.text;

//   // Remove unwanted characters and special entities
//   cleanText = cleanText.replaceAll(RegExp(r'[^\w\s.!?\-]'), '');

//   return cleanText.trim();
// }
cleanText(String rawText) {
  String cleanedText = removeHtmlTags2(rawText);
  String textWithParagraphs = addParagraphs(cleanedText);
  String doneText = _convertLinks(textWithParagraphs);
  return doneText;
}

String removeHtmlTags(String text) {
  // Remove HTML tags and elements
  text = text.replaceAll(RegExp(r'<[^>]*>'), '');

  // Decode special entities
  text = _decodeHtmlEntities(text);

  // Remove unwanted characters and special entities
  text = text.replaceAll(RegExp(r'[^\w\s.!?\-]'), '');

  return text.trim();
}

String _decodeHtmlEntities(String text) {
  String ttt = text
      .replaceAll('&quot;', '"')
      .replaceAll('&amp;', '&')
      .replaceAll('&lt;', '<')
      .replaceAll('&gt;', '>')
      .replaceAll('&nbsp;', ' ')
      .replaceAll('&ndash;', '-')
      .replaceAll('&mdash;', '-')
      .replaceAll('&rsquo;', "'")
      .replaceAll('&lsquo;', "'")
      .replaceAll('&rdquo;', '"')
      .replaceAll('&ldquo;', '"')
      .replaceAll('&hellip;', '...')
      .replaceAll(RegExp(r'&#?[a-zA-Z0-9]+;'), '');
  return addParagraphs(ttt);
}

String addParagraphs(String text) {
  // Split the text into paragraphs
  List<String> paragraphs = text.split('\n');

  // Remove empty paragraphs
  paragraphs = paragraphs.where((p) => p.trim().isNotEmpty).toList();

  // Wrap each paragraph with <p> tags
  String wrappedText = paragraphs.map((p) => '\n$p\n').join('');

  return wrappedText;
}

String removeHtmlTags2(String text) {
  // Remove HTML tags and elements
  text = text.replaceAll(RegExp(r'<[^>]*>'), '');

  // Decode special entities
  text = _decodeHtmlEntities(text);

  // Remove unwanted characters and special entities
  text = text.replaceAll(RegExp(r'[^\w\s.!?\-]'), '');

  return text.trim();
}

String _convertLinks(String text) {
  // Regex pattern to match URLs
  RegExp urlRegex = RegExp(
      r'(https?://(?:www\.|(?!www))[^\s.]+\.[^\s]{2,}|www\.[^\s]+\.[^\s]{2,})');

  // Find matches and replace them with HTML anchor tags
  return text.replaceAllMapped(urlRegex, (match) {
    String url = match.group(0)!;
    return '<a href="$url">$url</a>';
  });
}
