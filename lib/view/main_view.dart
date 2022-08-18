import 'package:admin_dashboard/controller/my_controller.dart';
import 'package:admin_dashboard/view/add_agent.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';

import '../constants.dart';
import '../widgets/row_info_list.dart';
import 'header.dart';

class MainView extends StatefulWidget {
  const MainView({
    Key? key,
  }) : super(key: key);

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<MyController>(context);
    return Expanded(
      flex: 5,
      child: Container(
        color: customGreyColor,
        child: Column(
          children: [
            const Header(),
            Expanded(
              flex: 9,
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    color: customGreyColor,
                  ),
                  child: CustomScrollView(
                    slivers: [
                      SliverAppBar(
                        automaticallyImplyLeading: false,
                        iconTheme: const IconThemeData(
                            color: Colors.blueAccent, size: 20.0),
                        backgroundColor: Colors.white,
                        elevation: 2,
                        title: DefaultTextStyle(
                          style: const TextStyle(color: Colors.black),
                          child: RowInfoList(
                            index: 0,
                            name: '',
                            email: Row(
                              children: const [
                                FaIcon(
                                  FontAwesomeIcons.envelope,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 10.0),
                                  child: Text('Email'),
                                ),
                              ],
                            ),
                            phone: Row(
                              children: const [
                                FaIcon(FontAwesomeIcons.phone),
                                Padding(
                                  padding: EdgeInsets.only(left: 10.0),
                                  child: Text('Mobile'),
                                )
                              ],
                            ),
                            lob: Row(
                              children: const [
                                FaIcon(FontAwesomeIcons.store),
                                Padding(
                                  padding: EdgeInsets.only(left: 10.0),
                                  child: Text('Line Of Business'),
                                )
                              ],
                            ),
                            update: ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const AddAgent(),
                                  ),
                                );
                              },
                              child: FittedBox(
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: const [
                                    FaIcon(
                                      FontAwesomeIcons.penToSquare,
                                      size: 15.0,
                                    ),
                                    Text('Update List'),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SliverList(
                        delegate: SliverChildBuilderDelegate(
                            childCount: provider.agentList.length,
                            (context, index) => provider.agentList[index]),
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
