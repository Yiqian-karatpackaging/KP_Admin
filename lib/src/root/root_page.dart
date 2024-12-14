// import 'package:flutter/cupertino.dart';
// import 'package:flutter_admin_scaffold/admin_scaffold.dart';
//
// class RootPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return AdminScaffold(
//       // appBar: AppBar(
//       //   title: const Text('Admin Dashboard'),
//       // ),
//       sideBar: SideBar(
//         items: const [
//           AdminMenuItem(
//             title: 'Dashboard',
//             route: '/dashboard',
//             icon: Icons.dashboard,
//           ),
//           AdminMenuItem(
//             title: 'Settings',
//             route: '/settings',
//             icon: Icons.settings,
//           ),
//         ],
//         selectedRoute: '/dashboard',
//         onSelected: (item) {
//           // 实现菜单的导航
//           Navigator.of(context).pushNamed(item.route);
//         },
//       ),
//       body: Center(
//         child: const Text('Welcome to the Admin Dashboard'),
//       ),
//     );
//   }
// }