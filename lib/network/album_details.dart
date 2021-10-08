import 'dart:convert';

import '../models/album/albumdetails.dart';
import 'lastapi.dart';

Future<AlbumDetailModel> getAlbumDetailsData(
    String albumName, String artist) async {
  AlbumDetailModel _album;

  var jsonData = await NetworkHelper.albumData(albumName, artist);

  var data = jsonDecode(jsonData)['album'];

  _album = AlbumDetailModel.fromJson(data);

  return _album;
}
