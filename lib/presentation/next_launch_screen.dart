import 'package:flutter/material.dart';
import 'package:sw_rocket_task/data/network.dart';
import 'package:sw_rocket_task/domain/launch.dart';
import 'package:sw_rocket_task/domain/launches_repository.dart';
import 'package:sw_rocket_task/domain/launches_usecase.dart';

class NextLaunchScreen extends StatefulWidget {
  NextLaunchScreen({Key? key}) : super(key: key);

  @override
  State<NextLaunchScreen> createState() => _NextLaunchScreenState();
}

class _NextLaunchScreenState extends State<NextLaunchScreen> {
  final LaunchesUseCases useCases = LaunchesUseCases(NetworkLayer());
  Launch nextLaunch = Launch(name: '', date: DateTime.now());

  getNextLaunch() async {
    nextLaunch = await useCases.getNextLaunch();

    print(nextLaunch.date);

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    getNextLaunch();

    final timeRemaining = nextLaunch.date.difference(DateTime.now());

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Next Launch'),
        ),
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                nextLaunch.name,
                style: Theme.of(context).textTheme.displaySmall,
              ),
              const SizedBox(height: 30),
              Text(
                timeRemaining.inDays.toString(),
                style: Theme.of(context).textTheme.displaySmall,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
