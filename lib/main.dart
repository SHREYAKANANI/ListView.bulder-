import'package:flutter/material.dart';
void main() => runApp(
  MaterialApp(
    title: 'ListView.builder',
    debugShowCheckedModeBanner: false,
    home: ListViewBuilder(),
  )
);
class ListViewBuilder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'ListView.builder Example '
        ),
      ),
      body: ListView.builder(
        itemCount: 15,
        itemBuilder: (BuildContext context,int index) {
          return ListTile(
            leading: Icon(Icons.today,
            color: Colors.deepOrange,
            ),
            title: Text('DAY $index',
            style: TextStyle(
              color: Colors.cyan,
              fontWeight: FontWeight.bold,
              fontSize: 25.0
            )
            ),
          );
        }

      )
    );
  }
}
