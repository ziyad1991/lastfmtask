import 'package:json_annotation/json_annotation.dart';

part 'albumtrackinfo.g.dart';

@JsonSerializable()
class AlbumTrackInfo {
  String name;

  AlbumTrackInfo({
    required this.name,
  });

  factory AlbumTrackInfo.fromJson(Map<String, dynamic> json) =>
      _$AlbumTrackInfoFromJson(json);
  Map<String, dynamic> toJson() => _$AlbumTrackInfoToJson(this);
}
