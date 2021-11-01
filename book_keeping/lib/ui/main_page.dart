import 'package:book_keeping/domain/use_case/main_page_use_case.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => MainPageUseCase()),
      ],
      child: Consumer<MainPageUseCase>(
        builder: (_, useCase, child) {
          return Scaffold(
            body: useCase.currentPage,
            bottomNavigationBar: BottomNavigationBar(
              items: useCase.bottomNavigationBarItems,
              onTap: (index) {
                useCase.currentPageIndex = index;
              },
              currentIndex: useCase.currentPageIndex,
            ),
          );
        },
      ),
    );
  }
}
