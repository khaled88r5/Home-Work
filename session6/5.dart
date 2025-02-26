// Find the Longest Word
// Write a function that takes a sentence as input and returns the longest word in the sentence.
// If multiple words have the same longest length, return the first one that appears.

String findLongestWord(String sentence) {
  List<String> words = sentence.split(' ');
  String longestWord = words.reduce((a, b) => a.length > b.length ? a : b);
  return longestWord;
}

void main() {
  String sentence = 'khaled go to collage everyday without rest';
  String longestWord = findLongestWord(sentence);
  print('Longest word: $longestWord');
}
