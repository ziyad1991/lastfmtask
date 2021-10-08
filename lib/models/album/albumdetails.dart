import 'package:json_annotation/json_annotation.dart';
import 'albumtracks.dart';

part 'albumdetails.g.dart';

@JsonSerializable()
class AlbumDetailModel {
  AlbumTrackModel tracks;
  String artist;
  String name;

  AlbumDetailModel(
      {required this.tracks, required this.artist, required this.name});

  factory AlbumDetailModel.fromJson(Map<String, dynamic> json) =>
      _$AlbumDetailModelFromJson(json);
  Map<String, dynamic> toJson() => _$AlbumDetailModelToJson(this);
}
