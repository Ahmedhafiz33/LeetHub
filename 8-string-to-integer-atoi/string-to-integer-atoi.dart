class Solution {
  int myAtoi(String s) {
    int i = 0;
    int n = s.length;
    int sign = 1;
    int result = 0;

    
    while (i < n && s[i] == ' ') {
      i++;
    }

    
    if (i < n && (s[i] == '+' || s[i] == '-')) {
      sign = (s[i] == '-') ? -1 : 1;
      i++;
    }

    
    while (i < n && s[i].codeUnitAt(0) >= 48 && s[i].codeUnitAt(0) <= 57) {
      int digit = s[i].codeUnitAt(0) - 48;

      
      if (result > (2147483647 - digit) ~/ 10) {
        return sign == 1 ? 2147483647 : -2147483648;
      }

      result = result * 10 + digit;
      i++;
    }

    return result * sign;
  }
}
