import 'package:json_annotation/json_annotation.dart';
import 'songalbum.dart';
import 'songwiki.dart';

part 'songdetails.g.dart';

@JsonSerializable()
class TrackModel {
  TrackAlbumModel? album;
  TrackWikiModel? wiki;
  String name;

  TrackModel({this.album, this.wiki, required this.name});

  factory TrackModel.fromJson(Map<String, dynamic> json) =>
      _$TrackModelFromJson(json);
  Map<String, dynamic> toJson() => _$TrackModelToJson(this);
}
