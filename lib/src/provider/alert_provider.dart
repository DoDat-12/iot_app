import 'package:flutter/foundation.dart';

class AlertData with ChangeNotifier {
  final Map<String, List<dynamic>> _alert = {
    "unread": [],
    "read": [],
  };

  List? get unreadData => _alert["unread"];
  List? get readData => _alert["read"];

  void addAlertData(String key, dynamic item) {
    _alert[key]!.add(item);
    print("$key ${key.runtimeType}");
    print(_alert);
    notifyListeners();
  }
}