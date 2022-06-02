import 'dart:math';

final quotes = [
  'One day or day one',
  'Strive for progress not perfection',
  'Yesterday you said tomorrow',
  'What we think, we become',
  'The grass is greener where you water it',

];

String getQuote() {
  final random = Random();

  int r = random.nextInt(4);
  return quotes[r];
}