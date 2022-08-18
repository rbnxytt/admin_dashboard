import 'package:admin_dashboard/constants.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';

import '../controller/my_controller.dart';

class RowInfoList extends StatelessWidget {
  const RowInfoList({
    Key? key,
    this.name,
    this.email,
    this.phone,
    this.lob,
    this.update,
    required this.index,
  }) : super(key: key);

  final String? name;
  final Widget? email;
  final Widget? phone;
  final Widget? lob;
  final Widget? update;
  final Text defaultWidget = const Text('');
  final int index;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(20.0)),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              name == ''
                  ? Expanded(
                      flex: 3,
                      child: Align(
                          alignment: Alignment.centerLeft,
                          child: SizedBox(
                              child: Row(
                            children: const [
                              FaIcon(
                                FontAwesomeIcons.userGroup,
                                color: Colors.blueAccent,
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 10.0),
                                child: Text('Agent Name'),
                              ),
                            ],
                          ))),
                    )
                  : Expanded(
                      flex: 3,
                      child: ListTile(
                        minLeadingWidth: 5.0,
                        leading: const FaIcon(FontAwesomeIcons.user),
                        title: Text(
                          name!,
                          style: const TextStyle(fontSize: 14.0),
                        ),
                      ),
                    ),
              Expanded(
                  flex: 2,
                  child: Align(
                      alignment: Alignment.centerLeft,
                      child: SizedBox(child: email ?? defaultWidget))),
              Expanded(
                  flex: 2,
                  child: Align(
                      alignment: Alignment.centerLeft,
                      child: Align(
                          alignment: Alignment.centerLeft,
                          child: SizedBox(child: phone ?? defaultWidget)))),
              Expanded(
                  flex: 2,
                  child: Align(
                      alignment: Alignment.centerLeft,
                      child: SizedBox(
                          child: FittedBox(child: lob ?? defaultWidget)))),
              const Spacer(),
              Expanded(
                flex: 2,
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: SizedBox(
                    child: update ??
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const FaIcon(
                              FontAwesomeIcons.penToSquare,
                              color: Colors.greenAccent,
                            ),
                            const SizedBox(
                              width: 20.0,
                            ),
                            TextButton(
                              onPressed: () => Provider.of<MyController>(
                                      context,
                                      listen: false)
                                  .deleteAgent(index),
                              child: const FaIcon(
                                FontAwesomeIcons.trashCan,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
