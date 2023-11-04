import 'package:sw_rocket_task/domain/launch.dart';
import 'package:sw_rocket_task/domain/launches_repository.dart';

class LaunchesUseCases {
  LaunchesUseCases(this.repository);

  LaunchesRepository repository;

  Future<Launch> getNextLaunch() async {
    Launch nextLaunch = await repository.getNextLaunch();

    return nextLaunch;
  }
}
