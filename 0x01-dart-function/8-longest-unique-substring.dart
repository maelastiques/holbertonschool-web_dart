String longestUniqueSubstring(String str) {
  if (str.isEmpty) return '';
  
  int start = 0;
  int maxLength = 0;
  int maxStart = 0;
  Map<String, int> charIndex = {};
  
  for (int end = 0; end < str.length; end++) {
    String currentChar = str[end];
    
    if (charIndex.containsKey(currentChar) && charIndex[currentChar]! >= start) {
      start = charIndex[currentChar]! + 1;
    }
    
    charIndex[currentChar] = end;
    
    int currentLength = end - start + 1;
    if (currentLength > maxLength) {
      maxLength = currentLength;
      maxStart = start;
    }
  }
  
  return str.substring(maxStart, maxStart + maxLength);
}

