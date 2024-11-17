import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Layout Demo',
      theme: ThemeData(primarySwatch: Colors.blue, fontFamily: 'Exo2'),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Basic Layout'),
        ),
        body: ListView(
          children: [
            SizedBox(
              height: 400,
              child: HorizontalScroller(),
            ),
            const SizedBox(
              height: 20,
            ),
            const ListTile(
              leading: Icon(Icons.star),
              title: Text('ListTile with Regular Font',
                  style: TextStyle(fontFamily: 'Lato')),
            ),
            const ListTile(
              leading: CircleAvatar(child: Icon(Icons.person)),
              title: Text('ListTile with Bold Font',
                  style: TextStyle(fontWeight: FontWeight.bold)),
            ),
            const ListTile(
              leading: Icon(Icons.settings),
              title: Text('ListTile with Italic Font',
                  style: TextStyle(
                      fontFamily: 'Rubik', fontStyle: FontStyle.normal)),
            ),
            SizedBox(
              height: 400,
              child: HorizontalScroller2(),
            ),
            const ListTile(
              trailing: Icon(Icons.arrow_forward),
              title: Text('Default Device Font'),
            ),
            const SizedBox(height: 20), // Space between elements
          ],
        ),
      ),
    );
  }

  ListView HorizontalScroller() {
    return ListView.builder(
      itemCount: 3,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        const List<String> images = [
          'assets/images/DonaldTrump.webp',
          'assets/images/DonaldTruck.webp',
          'assets/images/DonaldWink.webp'
        ];
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Image.asset(images[index], width: 200, height: 200),
        );
      },
    );
  }
}

ListView HorizontalScroller2() {
  return ListView.builder(
    itemCount: 3,
    scrollDirection: Axis.horizontal,
    itemBuilder: (context, index) {
      const List<String> images = [
        'https://content.api.news/v3/images/bin/66499c3b7693c28c85b7e12fbe5c72df',
        'https://whatstrending.com/wp-content/uploads/2024/06/biden-trump-guilty-verdict-e1717443313866-1000x1000.jpg',
        'https://www.newsx.com/wp-content/uploads/2024/10/WHEN-IM-PRESIDENT-Trump-Pledges-to-Make-McDonalds-Ice-Cream-Machines-Work-Great-Again.webp'
      ];
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Image.network(images[index], width: 200, height: 200),
      );
    },
  );
}
