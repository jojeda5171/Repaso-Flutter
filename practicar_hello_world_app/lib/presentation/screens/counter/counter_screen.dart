import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});
  @override
  State<StatefulWidget> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int points = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
            child:
                Text('MI APP', style: TextStyle(fontWeight: FontWeight.bold))),
        backgroundColor: const Color(0x57575757),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('$points',
                style: const TextStyle(
                    fontSize: 150, fontWeight: FontWeight.bold)),
            Text((points == 1) ? 'Point' : 'Points',
                style:
                    const TextStyle(fontSize: 100, fontStyle: FontStyle.italic))
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          ActionIcon(
            icon: Icons.refresh_outlined,
            onPressed: () {
              setState(() {
                points = 0;
              });
            },
          ),
          const SizedBox(height: 10),
          ActionIcon(
            icon: Icons.plus_one,
            onPressed: () {
              setState(() {
                points++;
              });
            },
          ),
          const SizedBox(height: 10),
          ActionIcon(
            icon: Icons.exposure_minus_1_outlined,
            onPressed: () {
              if (points == 0) return;
              setState(() {
                points--;
                //cambiar el color de fondo
              });
            },
          ),
        ],
      ),
    );
  }
}

class ActionIcon extends StatelessWidget {
  final IconData icon;
  final VoidCallback? onPressed;
  const ActionIcon({
    super.key,
    required this.icon,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: onPressed,
      backgroundColor: const Color(0xffffffff),
      child: Icon(icon),
    );
  }
}
