/* 10. For-Each Loop, Lists & String Manipulation
 Create a list of 5 words.
 - Iterate through the list using a for-each loop.
 - Convert each word to uppercase.- Print each word in uppercase*/
void main() {
  List<String> words = ['apple', 'khaled', 'car', 'botato', 'programing'];
  words.forEach((word) => print(word.toUpperCase()));
}
