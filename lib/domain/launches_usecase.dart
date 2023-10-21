import 'package:sw_rocket_task/domain/launch.dart';
import 'package:sw_rocket_task/domain/launches_repository.dart';

class LaunchesUseCases {
  LaunchesUseCases(this.repository);

  LaunchesRepository repository;

  Launch getNextLaunch() {
    Launch nextLaunch = repository.getNextLaunch();

    return nextLaunch;
  }
}
