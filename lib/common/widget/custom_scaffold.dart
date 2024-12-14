import 'package:flutter/material.dart';
import 'package:flutter_admin_scaffold/admin_scaffold.dart';
import 'package:kp_admin/routers/menu_items.dart';

class CustomScaffold extends StatelessWidget {
  const CustomScaffold({
    super.key,
    required this.route,
    required this.body,
    required this.title,
  });

  final Widget body;
  final String route;
  final String title;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: AdminScaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text(title ?? 'KP Admin System'),
          actions: [
            PopupMenuButton<AdminMenuItem>(
              child: const Icon(Icons.account_circle),
              itemBuilder: (context) {
                return MenuItems.getAdminMenus().map((AdminMenuItem item) {
                  return PopupMenuItem<AdminMenuItem>(
                    value: item,
                    child: Row(
                      children: [
                        Icon(item.icon),
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Text(
                            item.title,
                            style: const TextStyle(
                              fontSize: 14,
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                }).toList();
              },
              onSelected: (item) {
                print(
                    'actions: onSelected(): title = ${item.title}, route = ${item.route}');
                Navigator.of(context).pushNamed(item.route!);
              },
            ),
          ],
        ),
        sideBar: SideBar(
          backgroundColor: const Color(0xFFEEEEEE),
          activeBackgroundColor: Colors.black26,
          borderColor: const Color(0xFFE7E7E7),
          iconColor: Colors.black87,
          activeIconColor: Colors.blue,
          textStyle: const TextStyle(
            color: Color(0xFF337ab7),
            fontSize: 13,
          ),
          activeTextStyle: const TextStyle(
            color: Colors.white,
            fontSize: 13,
          ),
          items: MenuItems.getLeftMenus(),
          selectedRoute: route,
          onSelected: (item) {
            print(
                'sideBar: onTap(): title = ${item.title}, route = ${item.route}');
            if (item.route != null && item.route != route) {
              Navigator.of(context).pushNamed(item.route!);
            }
          },
          // header: Container(
          //   height: 50,
          //   width: double.infinity,
          //   color: const Color(0xff444444),
          //   child: const Center(
          //     child: Text(
          //       'header',
          //       style: TextStyle(
          //         color: Colors.white,
          //       ),
          //     ),
          //   ),
          // ),
          // footer: Container(
          //   height: 50,
          //   width: double.infinity,
          //   color: const Color(0xff444444),
          //   child: const Center(
          //     child: Text(
          //       'footer',
          //       style: TextStyle(
          //         color: Colors.white,
          //       ),
          //     ),
          //   ),
          // ),
        ),
        body: SizedBox.expand(
          // 确保 body 占据父容器的全部空间
          child: SingleChildScrollView(
            physics: const ClampingScrollPhysics(),
            child: body,
          ),
        ),
      ),
    );
  }
}
