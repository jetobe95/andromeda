import 'package:andromeda/data/friends_status.dart';
import 'package:andromeda/widgets/friends_status_list.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const _BottomNavigationBar(),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            children: [
              // Status
              ListTile(
                leading: const CircleAvatar(
                  foregroundColor: Colors.red,
                ),
                title: const Text('Hola Vanesa'),
                subtitle: const Text('¿Cómo has estado?'),
                trailing:
                    IconButton(onPressed: () {}, icon: const Icon(Icons.menu)),
              ),
              const SizedBox(height: 36),
              //Friends status list
              FriendStatusList(
                friends: kFriendStatus,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _BottomNavigationBar extends StatelessWidget {
  const _BottomNavigationBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, snapshot) {
      return Stack(
        clipBehavior: Clip.none,
        children: [
          BottomNavigationBar(
            items: const [
              BottomNavigationBarItem(
                  icon: Icon(Icons.home_outlined), label: 'Inicio'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.chat_bubble), label: 'ChatBot'),
            ],
          ),
          Positioned(
            bottom: kBottomNavigationBarHeight / 2,
            right: snapshot.maxWidth / 2,
            child: IconButton(
              iconSize: 40,
              focusColor: Colors.blue,
              onPressed: () {},
              icon: const Icon(Icons.group),
            ),
          ),
        ],
      );
    });
  }
}
