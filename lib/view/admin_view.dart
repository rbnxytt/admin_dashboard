import 'package:admin_dashboard/constants.dart';
import 'package:flutter/material.dart';

class AdminView extends StatelessWidget {
  const AdminView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: defaultBackgroundColor,
      body: Row(
        children: [
          Expanded(
              child: Container(
            color: Colors.white,
          ))
        ],
      ),
    );
  }
}
