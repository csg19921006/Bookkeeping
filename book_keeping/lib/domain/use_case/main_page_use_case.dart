import 'package:book_keeping/util/base_change_notifier.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainPageUseCase extends BaseChangeNotifier {
  List<BottomNavigationBarItem> get bottomNavigationBarItems => const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.note_add),
          label: 'note',
        ),
      ];

  List<Widget> get pages => [
        Container(
          color: Colors.blue,
        ),
        Container(
          color: Colors.red,
        ),
      ];
  Widget get currentPage => pages[currentPageIndex];

  int _currentPageIndex = 0;
  int get currentPageIndex => _currentPageIndex;
  set currentPageIndex(int value) {
    //
    _currentPageIndex = value;
    notifyListeners();
  }
}
