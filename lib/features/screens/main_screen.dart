// import 'package:flutter/material.dart';
// import 'package:vegan_liverpool/features/veganHome/screens/veganHome.dart';
// import 'package:auto_route/auto_route.dart';

// class MainScreen extends StatefulWidget {
//   MainScreen({Key? key}) : super(key: key);
//   @override
//   _MainScreenState createState() => _MainScreenState();
// }

// class _MainScreenState extends State<MainScreen> {
//   late TabsRouter _tabsRouter;

//   @override
//   Widget build(BuildContext context) {
//     return WillPopScope(
//         onWillPop: () {
//           if (_tabsRouter.canPopSelfOrChildren) {
//             return Future.value(true);
//           } else {
//             return Future.value(false);
//           }
//         },
//         child: VeganHomeScreen());
//   }
// }
