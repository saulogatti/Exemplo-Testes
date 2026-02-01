import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:testenovo/screen/route/app_route.gr.dart';

@RoutePage()
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      routes: [UsersListRoute(), ProductListRoute()],
      appBarBuilder: (context, tabsRouter) {
        final stringTitle = tabsRouter.current.title.call(context);
        return AppBar(
          title: Text(stringTitle),
          shadowColor: Colors.grey,
          elevation: 5,
        );
      },
      bottomNavigationBuilder: (context, tabsRouter) {
        return BottomNavigationBar(
          currentIndex: tabsRouter.activeIndex,
          onTap: (index) {
            tabsRouter.setActiveIndex(index);
          },
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Users'),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart),
              label: 'Products',
            ),
          ],
        );
      },
    );
  }
}
