import 'dart:convert';

import '../models/song/song.dart';
import 'lastapi.dart';

Future<List<TrackData>> getTrackData(String searchTermEntered) async {
  List<TrackData> tracks = [];

  var jsonData =
      await NetworkHelper.fetchSelectedTabData('track', searchTermEntered);

  List<dynamic> data = jsonDecode(jsonData)['results']['trackmatches']['track'];

  tracks = data.map((teamData) => TrackData.fromJson(teamData)).toList();

  return tracks;
}
