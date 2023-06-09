import 'package:flutter/material.dart';
import 'package:ui/ui.dart';

class UserItemScreen extends StatelessWidget {
  const UserItemScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: const Text('User Item Item'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Text('user login page me'),
            UserContainedItem(
              image: ClipRRect(
                borderRadius: BorderRadius.circular(35),
                child: Image.network(
                  'https://p.bigstockphoto.com/GeFvQkBbSLaMdpKXF1Zv_bigstock-Aerial-View-Of-Blue-Lakes-And--227291596.jpg',
                  width: 70,
                  height: 70,
                  fit: BoxFit.cover,
                ),
              ),
              leading: const Text('Leading'),
              title: const Text('aaa'),
              onClick: () {},
            ),
            const SizedBox(height: 15),
            const Text('user default'),
            UserContainedItem(
              image: ClipRRect(
                borderRadius: BorderRadius.circular(35),
                child: Image.network(
                  'https://p.bigstockphoto.com/GeFvQkBbSLaMdpKXF1Zv_bigstock-Aerial-View-Of-Blue-Lakes-And--227291596.jpg',
                  width: 70,
                  height: 70,
                  fit: BoxFit.cover,
                ),
              ),
              title: const Text('Name'),
              trailing: const Text('47 art'),
              color: Colors.orangeAccent,
              onClick: () {},
            ),
            const SizedBox(height: 15),
            const Text('Item vertical'),
            UserVerticalItem(
              image: ClipRRect(
                borderRadius: BorderRadius.circular(35),
                child: Image.network(
                  'https://p.bigstockphoto.com/GeFvQkBbSLaMdpKXF1Zv_bigstock-Aerial-View-Of-Blue-Lakes-And--227291596.jpg',
                  width: 70,
                  height: 70,
                  fit: BoxFit.cover,
                ),
              ),
              title: const Text('Castiglione'),
              trailing: const Text('43'),
              width: 159,
              color: Colors.lightGreen,
              onClick: () {},
            ),
          ],
        ),
      ),
    );
  }
}
