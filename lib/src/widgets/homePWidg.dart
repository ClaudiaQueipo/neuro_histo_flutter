import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

myAppBar() {
  return AppBar(
    title: Text("NeuroHisto"),
    backgroundColor: Color.fromARGB(255, 121, 76, 227).withOpacity(0.4),
    elevation: 0.0,
    leading: Icon(Icons.medical_services_rounded),
  );
}

dynamic myHomeBody() {
  return Container(
    child: homeInfo(),
    margin: EdgeInsets.all(10),
    padding: EdgeInsets.all(10),
  );
}

Widget homeInfo() {
  return Container(
      padding: EdgeInsets.all(8.0),
      margin: EdgeInsets.all(8.0),
      decoration: BoxDecoration(
          image: DecorationImage(
        image: AssetImage('assets/home_img.jpg'),
        fit: BoxFit.cover,
      )));
}

// myBottomBar(BuildContext context) {
//   return SafeArea(
//     child: Container(
//       padding: EdgeInsets.all(12),
//       margin: EdgeInsets.symmetric(horizontal: 24, vertical: 10),
//       decoration: BoxDecoration(
//           color: Color.fromARGB(255, 121, 76, 227).withOpacity(0.8),
//           borderRadius: BorderRadius.all(Radius.circular(24))),
//       child: Row(
//         children: [
//           SizedBox(
//             height: 36,
//             width: 100,
//             child: IconButton(
//                 onPressed: () {
//                   Navigator.pushNamed(context, "/");
//                 },
//                 icon: Icon(Icons.home, color: CupertinoColors.white)),
//           ),
//           SizedBox(
//             height: 36,
//             width: 100,
//             child: IconButton(
//                 onPressed: () {
//                   Navigator.pushNamed(context, "study");
//                 },
//                 icon: Icon(Icons.book, color: CupertinoColors.white)),
//           ),
//           SizedBox(
//             height: 36,
//             width: 100,
//             child: Icon(
//               Icons.stacked_bar_chart_sharp,
//               color: CupertinoColors.white,
//             ),
//           ),
//         ],
//       ),
//     ),
//   );
// }

myBottomBar(BuildContext context) {
  return SafeArea(
    child: Container(
      padding: EdgeInsets.all(12),
      margin: EdgeInsets.symmetric(horizontal: 24, vertical: 10),
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 121, 76, 227).withOpacity(0.8),
        borderRadius: BorderRadius.all(Radius.circular(24)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: IconButton(
              onPressed: () {
                Navigator.pushNamed(context, "/");
              },
              icon: Icon(Icons.home, color: CupertinoColors.white),
            ),
          ),
          Expanded(
            child: IconButton(
              onPressed: () {
                Navigator.pushNamed(context, "study");
              },
              icon: Icon(Icons.book, color: CupertinoColors.white),
            ),
          ),
          Expanded(
            child: Icon(Icons.stacked_bar_chart_sharp,
                color: CupertinoColors.white),
          ),
        ],
      ),
    ),
  );
}
