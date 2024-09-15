String oddsVsEvens(int num) {
  int oddNumbers = 0;
  int evenNumbers = 0;

  String toStringg = num.toString();

  for (int i = 0; i < toStringg.length; i++) {
    int currentNumber = int.parse(toStringg[i]);

    if (currentNumber % 2 == 0) {
      evenNumbers += currentNumber;
    } else {
      oddNumbers += currentNumber;
    }
  }

  if (oddNumbers > evenNumbers) {
    return 'odd';
  } else if (oddNumbers < evenNumbers) {
    return 'even';
  } else {
    return 'equal';
  }
}

void main(List<String> args) {
  print(oddsVsEvens(414331));
}
