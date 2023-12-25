import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:app/header.dart';
import 'package:app/profile_page.dart';
import 'package:app/settings_page.dart';

class EntryPoint extends StatelessWidget {
  const EntryPoint(this._username, {super.key});

  final String _username;

  @override
  Widget build(BuildContext context) =>  DefaultTabController(
    length: 2,
    child: Scaffold (
      backgroundColor: Theme.of(context).colorScheme.background,
      body: NestedScrollView(
        floatHeaderSlivers: true,
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          SliverAppBar(
            elevation: 5,
            shadowColor: Colors.black,
            surfaceTintColor: Colors.white,
            toolbarHeight: 240,
            centerTitle: true,
            title: Column(
              children: [
                const Header('assets/images/profile_photo.png'),
                Text(
                  _username,
                  style: const TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w800
                  ),
                ),
              ],
            ),
            pinned: true,
            floating: true,
            snap: false,
            bottom:  TabBar(
              indicatorSize: TabBarIndicatorSize.tab,
              indicatorColor: Theme.of(context).primaryColor,
              labelStyle: const TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w500,
                color: Colors.black,
              ),
              unselectedLabelStyle: const TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w500,
                color: Colors.grey,
              ),
              tabs: const [
                Tab(child: Text('Профиль')),
                Tab(child: Text('Настройки'))
              ],
            ),
          )
        ],
        body: const TabBarView (
          children: [
            ProfilePage(),
            SettingsPage(),
          ],
        ),
      ),
    ),
  );
}

class DescribedTitle extends StatelessWidget {
  const DescribedTitle(this._title, this._description, {super.key});

  final String _title;
  final String _description;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
            _title,
            style: const TextStyle(fontSize: 25, fontWeight: FontWeight.w800)
        ),
        Text(
          _description,
          style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w500, color: Colors.grey),
        ),
      ],
    );
  }
}
