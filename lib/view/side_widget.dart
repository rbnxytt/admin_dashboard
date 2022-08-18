import 'package:flutter/material.dart';

class SideWidget extends StatelessWidget {
  const SideWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        color: Colors.white,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Image.asset(
                'assets/images/logo.jpeg',
                height: 50,
              ),
            )
          ],
        ),
      ),
    );
  }
}
