// Count Words in a Sentence
// Write a function that counts the number of words in a given sentence.
// Words are separated by spaces, and the function should ignore extra spaces.

int countWords(String sentence) {
  List<String> words = sentence.split(' ');
  words.removeWhere((word) => word == ''); // Remove extra spaces(' ');
  print(words);
  return (words.length);
}

void main() {
  String sentence =
      'khaled ate his breakfast and then he goes to             club';
  int wordCount = countWords(sentence);
  print('Number of words: $wordCount');
}
