import 'package:flutter/material.dart';
void main() => runApp(MyApp());
class MyApp extends StatelessWidget {
 // This widget is the root of your application.
 @override
 Widget build(BuildContext context) {
 return MaterialApp(
 title: '6488180',
 theme: ThemeData(
 primarySwatch: Colors.blue,
),
 home: MyHomePage(title: 'Product layout demo home page'),
 );
 }
}
class MyHomePage extends StatelessWidget {
 MyHomePage({Key? key, required this.title}) : super(key: key);
 final String title;
 @override
 Widget build(BuildContext context) {
  return Scaffold(
  appBar: AppBar(title: Text("6488180")),
  body: ListView(
  shrinkWrap: true,
  padding: const EdgeInsets.fromLTRB(2.0, 10.0, 2.0, 10.0),
  children: <Widget>[
  ProductBox(
  name: "iPhone",
  description: "iPhone is the stylist phone ever",
  price: 1000,
  image: "Iphone_image.jpg"),
  ProductBox(
  name: "Pixel",
  description: "Pixel is the most featureful phone ever",
  price: 800,
  image: "Pixel.png"),
  ProductBox(
  name: "Laptop",
  description: "Laptop is most productive development tool",
  price: 2000,
  image: "Laptop.png"),
  ProductBoxN(
  name: "Tablet",
  description: "Tablet is the most useful device ever for meeting",
  price: 1500,
  image: "https://media-ik.croma.com/prod/https://media.croma.com/image/upload/v1672408216/Croma%20Assets/Computers%20Peripherals/Tablets%20and%20iPads/Images/245015_0_eoejck.png?tr=w-640"),
  ProductBoxN(
  name: "Pendrive",
  description: "Pendrive is useful storage medium",
  price: 100,
  image: "https://www.dealsplant.com/cdn/shop/products/sandisk-usb-pen-drives-sandisk-16gb-cruzer-blade-usb-pendrive-11297185103947.jpg?v=1634774402&width=1200"),
  ProductBoxN(
  name: "Floppy Drive",
  description: "Floppy drive is useful rescue storage medium",
  price: 20,
  image: "https://upload.wikimedia.org/wikipedia/commons/thumb/a/aa/Floppy_disk_2009_G1.jpg/800px-Floppy_disk_2009_G1.jpg"),
 ],
 ));
 }
}
class ProductBox extends StatelessWidget {
  ProductBox({Key? key, required this.name, required this.description,required this.price,required this.image}): super(key: key);
    final String name;
    final String description;
    final int price;
    final String image;
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(2),
      height: 120,
      child: Card(
      child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
      Image.asset("assets/appimages/" + image), //display locally stored images
      Expanded(
      child: Container(
      padding: EdgeInsets.all(5),
      child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
      Text(this.name,
      style: TextStyle(fontWeight: FontWeight.bold)),
      Text(this.description),
      Text("Price: " + this.price.toString()),
      ],
  )))
 ])));
 }
}
class ProductBoxN extends StatelessWidget {
 ProductBoxN({Key? key, required this.name, required this.description,required this.price,required this.image})
 : super(key: key);
 final String name;
 final String description;
 final int price;
 final String image;
 Widget build(BuildContext context) {
 return Container(
 padding: EdgeInsets.all(2),
 height: 120,
 child: Card(
 child: Row(
 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
 children: <Widget>[
 Image.network(image), //display image from the internet
 Expanded(
 child: Container(
 padding: EdgeInsets.all(5),
child: Column(
 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
 children: <Widget>[
 Text(this.name,
 style: TextStyle(fontWeight: 
FontWeight.bold)),
 Text(this.description),
 Text("Price: " + this.price.toString()),
 ],
 )))
 ])));
 }
}