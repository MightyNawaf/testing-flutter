import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  bool show = false;

  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              if (show) ...[
                const Text('Hello World!'),
              ],
              ElevatedButton(
                key: const Key('show_button'),
                onPressed: () async {
                  await Future.delayed(const Duration(seconds: 2), () {
                    show = true;
                  });
                  setState(() {});
                },
                child: const Text('Show text'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
