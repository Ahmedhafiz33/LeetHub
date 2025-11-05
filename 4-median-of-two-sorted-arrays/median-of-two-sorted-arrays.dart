class Solution {
   double findMedianSortedArrays(List<int> nums1, List<int> nums2) {
    List<int> merged = [...nums1, ...nums2];
    merged.sort();

    int n = merged.length;
    if (n % 2 == 1) {
      return merged[n ~/ 2].toDouble();
    } else {
      return (merged[n ~/ 2 - 1] + merged[n ~/ 2]) / 2.0;
    }
  }
}