List<int> twoSum(List<int> nums, int target) {

  for (int i = 0; i < nums.length; i++) {
    for (int k = i; k < nums.length -1; k++) {
      int c = nums[i] + nums[k+1] ;
      print(nums[i] + nums[k+1]);
      if (nums[i] + nums[k+1] == target) {
        print('equalL $c ');
        return [nums[i], nums[k+1]];
      }
    }
  }

  return [];
}

void main() {

  List<int> nums = [2, 7, 11, 15];
  int target = 9;


  print(twoSum(nums, target));
}
