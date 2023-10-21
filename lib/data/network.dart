import 'package:sw_rocket_task/domain/launch.dart';
import 'package:sw_rocket_task/domain/launches_repository.dart';

class NetworkLayer implements LaunchesRepository {
  @override
  Launch getNextLaunch() {
    // TODO: make a network call to SpaceX API
    // TODO: to get next launch data
    return Launch(name: 'Apollo2', date: DateTime.now().add(Duration(days: 5)));
  }
}
