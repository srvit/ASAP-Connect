import 'package:flutter/material.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({Key? key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // User profile section
            const ListTile(
              leading: CircleAvatar(),
              title: Text('Username'),
            ),
            const SizedBox(height: 20.0),

            // Menu sections
            Expanded(
              child: ListView(
                children: const [
                  // Profile section
                  MenuSection(
                    title: 'Profile',
                    icon: Icons.account_circle,
                    children: [
                      'View Profile',
                      'Enrolled Courses',
                      'Fees',
                      'Skills Loan',
                    ],
                  ),
                  SizedBox(height: 20.0),

                  // Resources section
                  MenuSection(
                    title: 'Resources',
                    icon: Icons.book,
                    children: [
                      'Scholarships',
                      'Event History',
                      'Jobs Applied To',
                      'Community',
                    ],
                  ),
                  SizedBox(height: 20.0),

                  // Settings section
                  MenuSection(
                    title: 'Settings',
                    icon: Icons.settings,
                    children: [
                      'Interested Areas',
                      'Screen Tests',
                      'Settings',
                      'Terms & Conditions',
                      'Refund & Cancellation Policy',
                      'App Information',
                    ],
                  ),
                ],
              ),
            ),

            // Logout button
            TextButton(
              onPressed: () {},
              child: const Text('Logout'),
            ),
          ],
        ),
      ),
    );
  }
}

class MenuSection extends StatelessWidget {
  final String title;
  final IconData icon;
  final List<String> children;

  const MenuSection({
    required this.title,
    required this.icon,
    required this.children,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ListTile(
          leading: Icon(icon),
          title: Text(title),
        ),
        const SizedBox(height: 10.0),
        ListView.builder(
          shrinkWrap: true,
          // physics: NeverScrollablePhysics(),
          itemBuilder: (context, index) => ListTile(
            title: Text(children[index]),
          ),
          itemCount: children.length,
        ),
      ],
    );
  }
}
