import 'dart:convert';
import '../models/artist/artistdetails.dart';
import 'lastapi.dart';

Future<ArtistDetailModel> getArtistDetailsData(String artist) async {
  ArtistDetailModel _artist;

  var jsonData = await NetworkHelper.TheArtistData(artist);

  var data = jsonDecode(jsonData)['artist'];

  _artist = ArtistDetailModel.fromJson(data);

  return _artist;
}
