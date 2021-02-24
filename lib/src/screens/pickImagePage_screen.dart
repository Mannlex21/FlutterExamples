import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class PickImagePageScreen extends StatefulWidget {
  const PickImagePageScreen({Key key}) : super(key: key);

  @override
  _PickImagePageScreen createState() => _PickImagePageScreen();
}

class _PickImagePageScreen extends State<PickImagePageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Uso de Pick image"),
      ),
      body: Center(
        child: getImageWidget(),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () => _showOptions(context),
      ),
    );
  }

  Widget getImageWidget() {
    if (_image == null) {
      return Text("Seleccione una imagen");
    } else {
      return Image.file(_image);
    }
  }

  File _image;

  void getImage(ImageSource source) async {
    var image = await ImagePicker().getImage(source: source);

    setState(() {
      _image = File(image.path);
      Navigator.pop(context);
    });
  }

  void _showOptions(BuildContext context) {
    showDialog(
        context: context,
        builder: (context) {
          return SimpleDialog(
            children: [
              ListTile(
                title: Text("Cámara"),
                leading: Icon(Icons.camera_alt),
                onTap: () => getImage(ImageSource.camera),
              ),
              ListTile(
                title: Text("Gallery"),
                leading: Icon(Icons.photo),
                onTap: () => getImage(ImageSource.gallery),
              )
            ],
          );
        });
  }
}
