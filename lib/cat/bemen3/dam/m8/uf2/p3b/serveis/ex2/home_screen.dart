import 'package:flutter/material.dart';
import 'package:empty/cat/bemen3/dam/m8/uf2/p3b/serveis/ex2/counter_provider.dart';
import 'package:empty/cat/bemen3/dam/m8/uf2/p3b/serveis/ex2/page1.dart';
import 'package:empty/cat/bemen3/dam/m8/uf2/p3b/serveis/ex2/page2.dart';
import 'package:empty/cat/bemen3/dam/m8/uf2/p3b/serveis/ex2/page3.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({
    super.key,
  });

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  final List<Widget> _pages = <Widget>[
    const Page1(),
    const Page2(),
    const Page3(),
  ]; // <Widget>[]

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Material App Bar'),
        actions: [
          TextButton(onPressed: null, child: Text(
            context.watch<CounterProvider>().counter.toString(), style: const TextStyle(color: Colors.white),
          ),)
        ],
      ),
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedIndex,
          onTap: (int index) {
            setState(() {
              _selectedIndex = index;
            });
          },
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Page 1',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.business),
              label: 'Page 2',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.school),
              label: 'Page 3',
            ),
          ]),
    );
  }
}
