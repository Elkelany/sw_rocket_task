import 'package:flutter/material.dart';
import 'package:sw_rocket_task/data/network.dart';
import 'package:sw_rocket_task/domain/launch.dart';
import 'package:sw_rocket_task/domain/launches_repository.dart';
import 'package:sw_rocket_task/domain/launches_usecase.dart';

class NextLaunchScreen extends StatelessWidget {
  NextLaunchScreen({Key? key}) : super(key: key);

  final LaunchesUseCases useCases = LaunchesUseCases(NetworkLayer());

  @override
  Widget build(BuildContext context) {
    Launch nextLaunch = useCases.getNextLaunch();
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
