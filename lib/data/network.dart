import 'package:dio/dio.dart';
import 'package:sw_rocket_task/data/launch_data_object.dart';
import 'package:sw_rocket_task/domain/launch.dart';
import 'package:sw_rocket_task/domain/launches_repository.dart';

class NetworkLayer implements LaunchesRepository {
  @override
  Future<Launch> getNextLaunch() async {
    final client = Dio();

    final response = await client.get('https://api.spacexdata.com/v5/launches/next');
    final data = response.data;
    if (data != null) {
      final launch = LaunchDataObject.fromJson(data);

      return Launch(
        name: launch.name ?? '',
        date: DateTime.parse(launch.dateUtc ?? ''),
      );
    }

    throw Exception('Launch data is null');
  }
}
