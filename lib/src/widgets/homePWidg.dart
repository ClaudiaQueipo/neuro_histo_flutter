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
    margin: EdgeInsets.all(10),
    padding: EdgeInsets.all(10),
    child: Column(
      children: [
        Expanded(
          child: homeInfo(),
        ),
        SizedBox(
          height: 20,
        ),
        Flexible(
          child: presentCard(),
        ),
      ],
    ),
  );
}

class presentCard extends StatelessWidget {
  const presentCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10.0,
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(20.0))),
      color: Color.fromARGB(200, 56, 62, 110),
      child: Column(
        children: [
          ListTile(
            leading: Icon(Icons.star, color: Colors.white),
            title: Text("\nTu app de estudio"),
            textColor: Colors.white,
            subtitle: Text(
                "\nCon esta app serás capaz de incrementar y perfeccionar tus conocimientos mediante el repaso activo del conocimiento adquirido"),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SizedBox(width: 15, height: 50),
            ],
          ),
        ],
      ),
    );
  }
}

Widget homeInfo() {
  return Container(
      padding: EdgeInsets.all(8.0),
      margin: EdgeInsets.all(8.0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
            image: AssetImage('assets/home_img.jpg'),
            fit: BoxFit.fill,
          )));
}

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
            child: IconButton(
              onPressed: () {
                Navigator.pushNamed(context, "");
              },
              icon: Icon(Icons.stacked_bar_chart_sharp,
                  color: CupertinoColors.white),
            ),
          ),
        ],
      ),
    ),
  );
}
