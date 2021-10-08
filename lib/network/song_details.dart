import 'dart:convert';

import '../models/song/songdetails.dart';
import '../network/lastapi.dart';

Future<TrackModel> getTrackDetailsData(String trackName, String artist) async {
  TrackModel _tracks;

  var jsonData = await NetworkHelper.songData(trackName, artist);

  var data = jsonDecode(jsonData)['track'];

  _tracks = TrackModel.fromJson(data);

  return _tracks;
}
