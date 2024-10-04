import 'package:altvideos/views/home_wrapper/favourites_page/favourites_page.dart';
import 'package:altvideos/views/home_wrapper/files_page/files_page.dart';
import 'package:altvideos/views/home_wrapper/home_page/home_page.dart';
import 'package:altvideos/views/home_wrapper/widgets/home_drawer.dart';
import 'package:flutter/material.dart';

class HomeWrapper extends StatefulWidget {
  const HomeWrapper({super.key});

  @override
  State<HomeWrapper> createState() => _HomeWrapperState();
}

class _HomeWrapperState extends State<HomeWrapper> {
  int page = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          page == 0
              ? 'H O M E P A G E'
              : page == 1
                  ? ' F A V O U R I T E S'
                  : 'F I L E S',
        ),
      ),
      body: IndexedStack(
        index: page,
        children: const [HomePage(), FavouritesPage(), FilesPage()],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        currentIndex: page,
        selectedItemColor: Theme.of(context).colorScheme.background,
        unselectedItemColor: Theme.of(context).colorScheme.onBackground,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            activeIcon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.star_border),
            activeIcon: Icon(Icons.star),
            label: 'Fav',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.folder_outlined),
            activeIcon: Icon(Icons.folder),
            label: 'Files',
          )
        ],
        onTap: (value) {
          setState(() {
            page = value;
          });
        },
      ),
      drawer: const HomeDrawer(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(
          Icons.play_arrow_rounded,
          size: 32,
          color: Theme.of(context).colorScheme.background,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}
