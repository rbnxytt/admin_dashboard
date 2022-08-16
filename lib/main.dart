import 'package:admin_dashboard/view/admin_view.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'controller/my_controller.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => MyController(),
      child: MaterialApp(
        title: 'Admin Dashboard',
        debugShowCheckedModeBanner: false,
        theme: ThemeData.light(),
        home: const AdminView(),
      ),
    );
  }
}
