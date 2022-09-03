import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import 'image_services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
              child: Column(
        children: [
          Text("Hello"),
          ElevatedButton(
              onPressed: () async {
                XFile? image = await PickImage.captureImage();
              },
              child: Text("Click Image")),
          ElevatedButton(
              onPressed: () async {
                XFile? image = await PickImage.pickImageFromGallery();
              },
              child: Text("Choose Image from Gallery")),
          ElevatedButton(
              onPressed: () async {
                XFile? image = await PickImage.pickImagesFromGallery();
              },
              child: Text("Choose multiple from Gallery")),
          ElevatedButton(
              onPressed: () async {
                XFile? image = await PickImage.captureVideo();
              },
              child: Text("Ca Video from Gallery")),
          ElevatedButton(
              onPressed: () async {
                XFile? image = await PickImage.pickVideoFromGallery();
              },
              child: Text("Choose Video from Gallery")),
        ],
      ))),
    );
  }
}
