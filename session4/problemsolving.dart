void main() {
  bool dession = false;
  List<int> my = [5, 8, 10, 6, 7, 12];
  for (int i = 0; i < my.length; i++) {
    for (int n = i + 1; n < my.length; n++) {
      if (my[i] == my[n]) {
        dession = true;
        break;
      }
    }
  }
  print(dession);
}
