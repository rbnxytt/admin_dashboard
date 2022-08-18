import 'package:admin_dashboard/widgets/row_info_list.dart';
import 'package:flutter/cupertino.dart';

class MyController extends ChangeNotifier {
  // ignore: prefer_final_fields
  List<Widget> _agentList = [
    RowInfoList(
      index: 0,
      name: 'Robin Ross Dalumpines',
      email: Text('rbnrss93@gmail.com'),
      phone: Text('09773336163'),
      lob: Text('ULTRA, Unlimited'),
    ),
    RowInfoList(
      index: 1,
      name: 'Krystelle Kaye Malasador',
      email: Text('kmalasador@gmail.com'),
      phone: Text('09773336163'),
      lob: Text('Support'),
    ),
  ];

  List<Widget> get agentList => _agentList;
  void addAgent(RowInfoList agentInfo) {
    _agentList.add(agentInfo);
    print('added');
    notifyListeners();
  }

  void deleteAgent(int index) {
    if (_agentList.length == 1) {
      index = 0;
    }
    _agentList.removeAt(index);
    print('deleted');
    notifyListeners();
  }
}
