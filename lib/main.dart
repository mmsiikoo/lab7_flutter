import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo Home Page',
      theme: ThemeData(
        primarySwatch: Colors.pink,
        scaffoldBackgroundColor: const Color(0xFFFAF8FF),
      ),
      home: const CornerRadiusScreen(),
    );
  }
}

class CornerRadiusScreen extends StatefulWidget {
  const CornerRadiusScreen({super.key});

  @override
  State<CornerRadiusScreen> createState() => _CornerRadiusScreenState();
}

class _CornerRadiusScreenState extends State<CornerRadiusScreen> {
  //змінні для радіуса кожного кута
  double _topLeft = 0.0;
  double _topRight = 0.0;
  double _bottomLeft = 0.0;
  double _bottomRight = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Demo Home Page'),
        backgroundColor: Colors.pink.shade300,
        foregroundColor: Colors.black,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            const SizedBox(height: 40),
            // контейнер у центрі
            Center(
              child: Container(
                width: 150,
                height: 150,
                decoration: BoxDecoration(
                  color: const Color(0xFF2196F3),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(_topLeft),
                    topRight: Radius.circular(_topRight),
                    bottomLeft: Radius.circular(_bottomLeft),
                    bottomRight: Radius.circular(_bottomRight),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 60),

            // рядок повзунків TL та TR
            Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('TL: ${_topLeft.toStringAsFixed(2)}',
                          style: const TextStyle(fontWeight: FontWeight.bold)),
                      Slider(
                        value: _topLeft,
                        min: 0,
                        max: 150,
                        activeColor: const Color(0xFFFA6EE7),
                        onChanged: (value) {
                          setState(() {
                            _topLeft = value;
                          });
                        },
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 20),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('TR: ${_topRight.toStringAsFixed(2)}',
                          style: const TextStyle(fontWeight: FontWeight.bold)),
                      Slider(
                        value: _topRight,
                        min: 0,
                        max: 150,
                        activeColor: const Color(0xFFFA6EE7),
                        onChanged: (value) {
                          setState(() {
                            _topRight = value;
                          });
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),

            // рядок повзунків BL та BR
            Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('BL: ${_bottomLeft.toStringAsFixed(2)}',
                          style: const TextStyle(fontWeight: FontWeight.bold)),
                      Slider(
                        value: _bottomLeft,
                        min: 0,
                        max: 150,
                        activeColor: const Color(0xFFFA6EE7),
                        onChanged: (value) {
                          setState(() {
                            _bottomLeft = value;
                          });
                        },
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 20),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('BR: ${_bottomRight.toStringAsFixed(2)}',
                          style: const TextStyle(fontWeight: FontWeight.bold)),
                      Slider(
                        value: _bottomRight,
                        min: 0,
                        max: 150,
                        activeColor: const Color(0xFFFA6EE7),
                        onChanged: (value) {
                          setState(() {
                            _bottomRight = value;
                          });
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}