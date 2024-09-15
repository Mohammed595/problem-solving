List<String> findCommonWords(List<String> wordsList) {
  // Create a list to store common words
  List<String> commonWords = [];

  // Iterate through each word in the list
  for (int i = 0; i < wordsList.length; i++) {
      print(i.toString() + ' < i'  );
    String word = wordsList[i].toLowerCase(); // Convert word to lowercase
    bool isAlreadyAdded = false;

    // Check if the word is already in the commonWords list
    for (int j = 0; j < i; j++) {
      if (wordsList[j].toLowerCase() == word) {
        isAlreadyAdded = true; // If word is found previously, set flag to true
        break;
      }
    }

    // If not already added, check if it's a common word
    if (!isAlreadyAdded) {
      int frequency = 0;
      for (int k = i; k < wordsList.length; k++) {
              print(k.toString() + ' < k'  );

        if (wordsList[k].toLowerCase() == word) {
          frequency++; // Count the frequency of the word
        }
      }
      if (frequency > 1) {
        commonWords.add(word); // If frequency is greater than 1, add to commonWords list
      }
    }
  }

  return commonWords; // Return the list of common words
}

void main() {
  List<String> wordsList = ["apple", "banana", "apple", "orange", "banana", "grape"];
  List<String> commonWords = findCommonWords(wordsList);
  print("Common words: $commonWords");
}
