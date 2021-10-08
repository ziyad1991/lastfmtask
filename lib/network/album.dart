import 'dart:convert';

import '../models/album/album.dart';
import 'lastapi.dart';

Future<List<AlbumData>> getAlbumData(String searchTermEntered) async {
  List<AlbumData> albums = [];

  var jsonData =
      await NetworkHelper.fetchSelectedTabData('album', searchTermEntered);

  List<dynamic> data = jsonDecode(jsonData)['results']['albummatches']['album'];

  albums = data.map((teamData) => AlbumData.fromJson(teamData)).toList();

  return albums;
}
