int sum_cubes(int num) {
  // write your code here
  int finalNumber = 0;

  for (int i = 1; i <= num; i++) {
    finalNumber += i * i * i;
  }
  print(finalNumber);

  return finalNumber;
}

void main(List<String> args) {
  sum_cubes(3);
}
