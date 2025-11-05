class Solution {
  int lengthOfLongestSubstring(String s) {
    int left = 0;
    int maxLen = 0;
    Map<String, int> seen = {};

    for (int right = 0; right < s.length; right++) {
      String char = s[right];

      if (seen.containsKey(char) && seen[char]! >= left) {
        left = seen[char]! + 1;
      }

      seen[char] = right;
      maxLen = maxLen < (right - left + 1) ? (right - left + 1) : maxLen;
    }

    return maxLen;
  }
}
