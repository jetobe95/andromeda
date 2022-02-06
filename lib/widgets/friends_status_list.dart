import 'package:andromeda/models/friend_status.dart';
import 'package:flutter/material.dart';

class FriendStatusList extends StatelessWidget {
  const FriendStatusList({
    required this.friends,
    Key? key,
  }) : super(key: key);
  final List<FriendStatus> friends;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 240,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: friends.length,
        separatorBuilder: (BuildContext context, int index) => const SizedBox(
          width: 10,
        ),
        itemBuilder: (BuildContext context, int index) {
          return FriendStatusCard(
            data: friends[index],
          );
        },
      ),
    );
  }
}

class FriendStatusCard extends StatelessWidget {
  const FriendStatusCard({
    required this.data,
    Key? key,
  }) : super(key: key);

  final FriendStatus data;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: data.color, width: 8),
      ),
      child: SizedBox(
        width: 232,
        height: 232,
        child: Padding(
          padding: const EdgeInsets.all(0),
          child: Stack(
            children: [
              Positioned.fill(
                child: Image.asset(data.image),
              ),
              Positioned(
                  top: 15,
                  left: 10,
                  child: Row(
                    children: [
                      const Icon(Icons.remove_red_eye, color: Colors.white),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        data.views,
                        style: const TextStyle(color: Colors.white),
                      ),
                    ],
                  )),
              Positioned(
                  bottom: 15,
                  left: 10,
                  child: Row(
                    children: [
                      const CircleAvatar(
                        foregroundColor: Colors.red,
                        radius: 14,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        data.name,
                        style: const TextStyle(color: Colors.white),
                      )
                    ],
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
