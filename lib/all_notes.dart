/*import 'package:flutter/material.dart';
import 'db_helper.dart';

class AllNotesPage extends StatefulWidget {
  const AllNotesPage({Key? key}) : super(key: key);

  @override
  State<AllNotesPage> createState() => _AllNotesPageState();
}

class _AllNotesPageState extends State<AllNotesPage> {

  List<Map<String, dynamic>> notes = [];

  @override
  void initState() {
    super.initState();
    getAllNotes();
  }
  void getAllNotes() async{
   notes = await DBHelper().fetchData();
   setState(() {

   });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Notes'),
      ),

      body:  ListView.builder(itemBuilder:  (context, index) =>  ListTile(
        leading: Text(notes[index][DBHelper().columnId].toString()),
        title: Text(notes[index][DBHelper().columnTitle].toString()),
        subtitle: Text(notes[index][DBHelper().columnDesc].toString()),
      ), itemCount: notes.length,),
    );
  }
}*/


import 'package:db_manager/db_helper.dart';
import 'package:flutter/material.dart';

class AllNotes extends StatefulWidget {
  const AllNotes({Key? key}) : super(key: key);

  @override
  State<AllNotes> createState() => _AllNotesState();
}

class _AllNotesState extends State<AllNotes> {

  List<Map<String, dynamic>> notes = [];


  @override
  void initState() {
   getAllNites();
    super.initState();
  }
  void getAllNites() async{
    notes = await DBHelper().fetchData();
    setState(() {

    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Notes'),
      ),
      body: ListView.builder(itemBuilder: (context, index) => Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListTile(
          leading: Text(notes[index][DBHelper().colunmTitle].toString()),
          title: Text(notes[index][DBHelper().colunmdisc].toString()),
          subtitle: Text(notes[index][DBHelper().colunmroll].toString()),

        ),
      ),
        itemCount: notes.length,),
    );
  }
}

