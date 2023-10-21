import 'package:sw_rocket_task/domain/launch.dart';

abstract class LaunchesRepository {
  Launch getNextLaunch();
}
