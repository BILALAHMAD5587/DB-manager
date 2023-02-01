void main(){
  print('task 1');
  fechData();
}
void fechData()async{
  print('task 2 ');
  var data = await getData();
  print('task 3 $data');
}
Future<String> getData(){
  return Future.delayed(Duration(seconds: 5), () => "task 4");
}