import 'package:json_annotation/json_annotation.dart';
import 'songalbum.dart';
import 'songwiki.dart';

part 'songdetails.g.dart';

@JsonSerializable()
class TrackModel {
  TrackAlbumModel? album;
  TrackWikiModel? wiki;
  String name;
  String url;

  TrackModel({this.album, this.wiki, required this.name, required this.url});

  factory TrackModel.fromJson(Map<String, dynamic> json) =>
      _$TrackModelFromJson(json);
  Map<String, dynamic> toJson() => _$TrackModelToJson(this);
}
