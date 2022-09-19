import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget titleSection = Container(
        padding: const EdgeInsets.all(32.0),
        child: Row(
          children: [
            Expanded(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: const Text('Oeschinen Lake Campground',
                        style: TextStyle(fontWeight: FontWeight.bold))),
                Text(
                  'Kandersteg, Switzerland',
                  style: TextStyle(color: Colors.grey[500]),
                )
              ],
            )),
            Icon(Icons.star, color: Colors.red[500]),
            const Text('41')
          ],
        ));

    Column buildButtonColumn(IconData icon, String label) {
      Color color = Theme.of(context).primaryColor; // blue

      return Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, color: color),
          Container(
              margin: const EdgeInsets.only(top: 8.0),
              child: Text(
                label,
                style: TextStyle(
                    fontSize: 12.0, fontWeight: FontWeight.w400, color: color),
              ))
        ],
      );
    }

    // 实例化三个按钮
    Widget buttonSection = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        buildButtonColumn(Icons.call, 'CALL'),
        buildButtonColumn(Icons.near_me, 'ROUTE'),
        buildButtonColumn(Icons.share, 'SHARE')
      ],
    );

    Widget textSection = Container(
        padding: const EdgeInsets.all(32.0),
        child: const Text(
          '''
          Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese Alps. Situated 1,578 meters above sea level, it is one of the larger Alpine Lakes. A gondola ride from Kandersteg, followed by a half-hour walk through pastures and pine forest, leads you to the lake, which warms to 20 degrees Celsius in the summer. Activities enjoyed here include rowing, and riding the summer toboggan run.
        ''',
          softWrap: true,
        ));

    return MaterialApp(
        title: 'Flutter Demo',
        home: Scaffold(
          appBar: AppBar(title: const Text('Welcome to Flutter')),
          body: ListView(
            children: [
              Image.asset(
                'images/lake.jpg',
                width: 600.0,
                height: 240.0,
                fit: BoxFit.cover,
              ),
              titleSection,
              buttonSection,
              textSection,
            ],
          ),
        ),
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ));
  }
}
