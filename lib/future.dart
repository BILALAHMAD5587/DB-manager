// void main(){
//   print('main: task started');
//   fetchOnlineData();
//   print('main task ended');
// }
// void fetchOnlineData() async{
//   print('Fetching process started');
//   var data = await getData();
//   print('fetched: $data');
//
//   print('fetching comleted');
// }
//
// Future<String> getData(){
//
//   return Future.delayed(Duration(seconds: 5), () => "some data");
// }