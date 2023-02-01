
import 'package:db_manager/all_notes.dart';
import 'package:db_manager/db_helper.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HOmePage(),
    );
  }
}

class HOmePage extends StatefulWidget {
  const HOmePage({Key? key}) : super(key: key);

  @override
  State<HOmePage> createState() => _HOmePageState();
}

class _HOmePageState extends State<HOmePage> {
 var TitleControler = TextEditingController();
 var DescControler = TextEditingController();
 var RollControler = TextEditingController();

  @override
  void initState() {
   //adData();
    //UpDateData();
    delData();
    super.initState();
  }
  // void adData(){
  //   DBHelper().addData("Name", "Bilal", "Ahmad");
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DataBase'),
      ),
      body: Center(
        child: SizedBox(
          width: 400,
          height: 400,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(controller: TitleControler,),
              TextField(controller: DescControler,),
              TextField(controller: RollControler,),
              ElevatedButton(onPressed: (){
                var title = TitleControler.text.toString();
                var desc = DescControler.text.toString();
                var ROll = RollControler.text.toString();

                DBHelper().addData(title, desc, ROll);
              }, child: Text('Save')),
              ElevatedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) => AllNotes(),));
              }, child: Text('View All Notes'))
            ],
          ),
        ),
      ),
    );
  }
  /*void UpDateData(){
    DBHelper().upDateData(5, 'UpDate', 'Data', 'success');
  }*/

void delData(){
  DBHelper().delData(6);
}
}






/*class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var titleController = TextEditingController();
  var descController = TextEditingController();

  @override
  void initState() {
    //addData();
    
    super.initState();
  }
  // void addData() {
  //   DBHelper().addData("Hello", "Frist Note",);
  // }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DataBase'),
      ),
      body: Center(
        child: SizedBox(
          width: 400,
          height: 400,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: titleController,
              ),
              TextField(
                controller: descController,
              ),
              ElevatedButton(onPressed: (){
                var title = titleController.text.toString();
                var desc = descController.text.toString();

                DBHelper().addData(title, desc);

              }, child: Text('save')),
              ElevatedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder:
                    (context) => AllNotesPage()));
              }, child:
              Text('View All Notes'))
            ],
          ),
        ),
      ),
    );
  }
}*/
