import 'package:admin_dashboard/constants.dart';
import 'package:flutter/material.dart';

class AddAgent extends StatelessWidget {
  const AddAgent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: customGreyColor,
        iconTheme: const IconThemeData(color: Colors.black),
        elevation: 0,
      ),
      body: Stack(
        children: [
          Container(
            height: 500,
            width: 500,
            color: customGreyColor,
          ),
        ],
      ),
    );
  }
}
