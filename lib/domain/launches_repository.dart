import 'package:sw_rocket_task/domain/launch.dart';

abstract class LaunchesRepository {
  Future<Launch> getNextLaunch();
}
