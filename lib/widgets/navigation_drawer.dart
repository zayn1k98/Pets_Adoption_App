import 'package:flutter/material.dart';
import 'package:nymble_assignment/screens/history/adoption_history.dart';
import 'package:nymble_assignment/utilities/theme_data.dart';

class NavDrawer extends StatelessWidget {
  const NavDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          ListView.builder(
            shrinkWrap: true,
            physics: const BouncingScrollPhysics(),
            itemCount: 1,
            itemBuilder: (context, index) {
              return ListTile(
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const AdoptionHistoryScreen();
                  }));
                },
                leading: const Icon(
                  Icons.history_rounded,
                  color: grey,
                  size: 28,
                ),
                title: const Text('Adoption History'),
              );
            },
          ),
        ],
      ),
    );
  }
}
