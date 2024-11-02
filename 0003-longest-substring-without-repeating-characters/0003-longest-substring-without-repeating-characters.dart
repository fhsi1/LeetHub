class Solution {
  int lengthOfLongestSubstring(String s) {
    Set<String> letters = {};
    int maxSubString = 0;
    int left = 0;

    for (int right = 0; right < s.length; right++) {
      while (letters.contains(s[right])) {
        letters.remove(s[left]);
        left++;
      }
      letters.add(s[right]);
      maxSubString = maxSubString > letters.length ? maxSubString : letters.length;
    }

    return maxSubString;
  }
}
