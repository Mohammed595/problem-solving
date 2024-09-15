String date_format(String date) {
  // first format > same input

  final fistFormat = date;
  print(fistFormat);

  // replacment / to -
  final secondtFormat = date.replaceAll(RegExp(r'/'), '-');
  print(secondtFormat);

  // revers and make month in the last and day in middle
  final xx = date.split('/');
  List list = [];

  list.add(xx[1]);
  list.add(xx[2]);
  list.add(xx[0]);
  String day = list[1];
  String month = list[0];
  String yesr = list[2];

 

  final thidFormat = month + '/' + day + '/' + yesr ;

final sumAllFromat = fistFormat + ' | ' + secondtFormat + ' | ' + thidFormat ;
  print(sumAllFromat);

  return sumAllFromat;
}

void main(List<String> args) {
  date_format('2020/20/28');
}
