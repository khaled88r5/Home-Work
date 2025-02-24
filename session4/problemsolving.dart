bool main() {
  bool dession = false;
  List<int> nums = [5, 8, 10, 6, 7, 12];
  for (int i = 0; i < nums.length; i++) {
    for (int n = i + 1; n < nums.length; n++) {
      if (nums[i] == nums[n]) {
        dession = true;
        break;
      }
    }
  }
  return dession;
}
