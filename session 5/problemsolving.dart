class Solution {
  List<int> twoSum(List<int> nums, int target) {
    List<int> found = [];
    for (int i = 0; i < nums.length; i++) {
      for (int n = i + 1; n < nums.length; n++) {
        if (nums[i] + nums[n] == target) {
          found.add(i);
          found.add(n);
          break;
        }
      }
    }
    return found;
  }
}
