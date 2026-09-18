import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'models/cart_model.dart';
// import ให้ตรงกับ path ของคุณ
import 'screens/home_page.dart'; 
import 'repositories/item_repository_api.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => CartModel(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Campus Marketplace',
      theme: ThemeData(primarySwatch: Colors.blue),
      // ส่ง ItemRepositoryApi เข้าไปใน HomePage
      home: HomePage(repository: ItemRepositoryApi()), 
    );
  }
}