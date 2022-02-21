// import 'package:admin_this_is_november/helpers/reponsive.dart';
// import 'package:admin_this_is_november/widgets/side_menu.dart';
// import 'package:admin_this_is_november/widgets/top_nav.dart';
// import 'package:flutter/material.dart';

// class MainScreen extends StatelessWidget {
//   final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       key: scaffoldKey,
//       extendBodyBehindAppBar: true,
//       appBar: topNavigationBar(context, scaffoldKey),
//       drawer: const Drawer(child: SideMenu()),
//       body: SafeArea(
//         child: Row(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             // We want this side menu only for large screen
//             if (Responsive.isDesktop(context))
//               Expanded(
//                 // default flex = 1
//                 // and it takes 1/6 part of the screen
//                 child: SideMenu(),
//               ),
//             Expanded(
//               // It takes 5/6 part of the screen
//               flex: 5,
//               child: DashboardScreen(),
//             ),
//           ],
//         ),
//       ),
//     );


//     return Scaffold(
//       key: scaffoldKey,
//       extendBodyBehindAppBar: true,
      
//       drawer: const Drawer(child: SideMenu()),
//       body: ResponsiveWidget(
//           largeScreen: LargeScreen(),
//           smallScreen: Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 16),
//             child: localNavigator(),
//           )),
//     );
//   }
// }