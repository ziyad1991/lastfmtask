import 'package:json_annotation/json_annotation.dart';

part 'songalbum.g.dart';

@JsonSerializable()
class TrackAlbumModel {
  String title;
  String artist;

  TrackAlbumModel({
    required this.title,
    required this.artist,
  });

  factory TrackAlbumModel.fromJson(Map<String, dynamic> json) =>
      _$TrackAlbumModelFromJson(json);
  Map<String, dynamic> toJson() => _$TrackAlbumModelToJson(this);
}
