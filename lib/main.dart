import 'package:flutter/material.dart';
import 'pages/home_page.dart';

void main() {
  runApp(const ProtocolApp());
}

class ProtocolApp extends StatelessWidget {
  const ProtocolApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: Colors.blue, primary: Colors.blueAccent),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}


// style: Theme.of(context).textTheme.headlineMedium,

// Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             const Text(
//               'You have pushed the button this many times:',
//             ),
//             Text(
//               ' _selectedIndex',
//             ),
//           ],
//         ),
