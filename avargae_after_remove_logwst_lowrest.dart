int average(List<int> visitors) {
  int lowest = visitors[0];
  int logest = visitors[0];
  double finalNumber = 0;

  if (visitors.length >= 3 && visitors.length <= 100) {
    for (int i = 0; i < visitors.length; i++) {
      if (visitors[i] >= 1 && visitors[i] <= 1000) {
        if (lowest > visitors[i]) {
          lowest = visitors[i];
        }

        // remove loger number
        if (logest < visitors[i]) {
          logest = visitors[i];
        }

        // reomve all numbers same lowset number
        if (i + 1 == visitors.length && visitors.length > 1) {
          for (int cc = 0; cc < visitors.length; cc++) {
            if (visitors[cc] == lowest) {
              visitors.removeAt(cc);
            }

            if (visitors[cc] == logest) {
              visitors.removeAt(cc);
            }
          }
        }

        int num = 0;
        // caluclate
        for (int cal = 0; cal < visitors.length; cal++) {
          num += visitors[cal];
        }

        finalNumber = num / visitors.length;
      }
    }
  }

  print(finalNumber.toInt());

  return finalNumber.toInt();
}

void main() {
  average([1500, 1500, 3000, 1]);
}
