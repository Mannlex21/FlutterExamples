import 'package:flutter/material.dart';

class ListViewExample extends StatelessWidget {
  @override
  Widget build(BuildContext buildContext) {
    return Scaffold(
      appBar: AppBar(),
      // body: ListView(
      //   children: [
      //     Card(
      //       child: Image.network("https://thispersondoesnotexist.com/image"),
      //     ),
      //     Card(
      //       child: Image.network("https://thispersondoesnotexist.com/image"),
      //     ),
      //     Card(
      //       child: Image.network("https://thispersondoesnotexist.com/image"),
      //     )
      //   ],
      // ),

      // body: ListView.builder(
      //   itemBuilder: (BuildContext context, int index) {
      //     return Card(
      //       child: Image.network("https://thispersondoesnotexist.com/image?index=$index"),
      //     );
      //   },
      // ),
      body: ListViewExampleCustom(),
    );
  }
}

class ListViewExampleCustom extends StatelessWidget {
  //ListView tiene que tener una cantidad, si no, se queda infinito
  ListViewExampleCustom({Key key}) : super(key: key);
  // List<String> names = ["Mario", "Juan", "Marta", "Manuel"];

  @override
  Widget build(BuildContext buildContext) {
    return ListView.builder(
      // itemCount: names.length,
      itemCount: 50,
      itemBuilder: (BuildContext context, int index) {
        // final name = names[index];
        // return Card(
        //   child: Text(name),
        // );

        // return ListTile(
        //   title: Text(name),
        //   leading: Icon(Icons.person),
        //   onTap: () {
        //     print(name);
        //   },
        //);

        return Image.network(
          "https://picsum.photos/id/$index/300/200",
          height: 200,
        );
      },
    );
  }
}
