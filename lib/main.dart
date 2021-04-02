import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_management_provider/counter_model.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('State Management Using Provider'),
        ),
        body: ChangeNotifierProvider(
          create: (context) => CounterModel(),
          child: const DemoPage(),
        ),
      ),
    );
  }
}

class DemoPage extends StatelessWidget {
  const DemoPage();

  @override
  Widget build(BuildContext context) {
    final counter = context.watch<CounterModel>();

    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          TextButton(
            child: const Text(
              '+1',
              style: TextStyle(color: Colors.green, fontSize: 25),
            ),
            onPressed: () => counter.increment(),
          ),
          Text(
            '${counter.currentCount}',
            style: const TextStyle(fontSize: 30),
          ),
          TextButton(
            child: const Text(
              '-1',
              style: TextStyle(color: Colors.green, fontSize: 25),
            ),
            onPressed: () => counter.decrement(),
          ),
        ],
      ),
    );
  }
}


// void main() {
//   runApp(MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('State Management'),
//         ),
//         body: const DemoPage(),
//       ),
//     );
//   }
// }
//
// class DemoPage extends StatefulWidget {
//   const DemoPage();
//
//   @override
//   _DemoPageState createState() => _DemoPageState();
// }
//
// class _DemoPageState extends State<DemoPage> {
//
//   int _counter = 0;
//
//   void _increment() {
//     setState(() {
//       _counter++;
//     });
//   }
//
//   void _decrement() {
//     setState(() {
//       _counter--;
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceAround,
//         children: [
//           TextButton(
//             child: const Text(
//               '+1',
//               style: TextStyle(color: Colors.green, fontSize: 25),
//             ),
//             onPressed: _increment,
//           ),
//           Text(
//             '$_counter',
//             style: const TextStyle(fontSize: 30),
//           ),
//           TextButton(
//             child: const Text(
//               '-1',
//               style: TextStyle(color: Colors.green, fontSize: 25),
//             ),
//             onPressed: _decrement,
//           ),
//         ],
//       ),
//     );
//   }
// }