import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
//this contains a lot of useful tools, such as motion conrols and a clipboard and orientation

void main() {
  runApp(BulleyeApp());
}

class BulleyeApp extends StatelessWidget {
  const BulleyeApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.landscapeRight,
    ]);
    //this sets the device orientation for both left and right
    //

    return const MaterialApp(
      title: 'Bullseye',
      home: GamePage(),
    );
  }
}

class GamePage extends StatefulWidget {
  const GamePage({Key? key}) : super(key: key);

  @override
  State<GamePage> createState() => _GamePageState();
}

class _GamePageState extends State<GamePage> {
  var _alertIsVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Hello Bullseye',
              style: TextStyle(
                color: Colors.green,
                fontWeight: FontWeight.bold,
              ),
            ),
            TextButton(
              onPressed: () {
                _alertIsVisible = true;
                _showAlert(context);
              },
              child: const Text(
                'Hit Me!!',
                style: TextStyle(
                  color: Colors.blue,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _showAlert(BuildContext context) {
    var okButton = TextButton(
      child: const Text('Awesome!'),
      onPressed: () {
        Navigator.of(context).pop();
        _alertIsVisible = false;
        print('Awesome pressed! $_alertIsVisible');
      },
    );
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Hello there!'),
          content: const Text('This is my first pop-up!'),
          actions: [
            okButton,
          ],
          elevation: 5,
        );
      },
    );
  }
}
