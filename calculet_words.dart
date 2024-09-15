void main(List<String> args) {
  countWords('hi hi ehy sf kjo');
}

int countWords(String txt) {
  // write your code here
  int count = 0;

  for (int i = 0; i < txt.length; i++) {
    if (txt[i] == ' ') {
      ++count;
    }
  }
  ++count;

  return count;
}
