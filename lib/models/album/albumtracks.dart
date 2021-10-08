import 'package:json_annotation/json_annotation.dart';
import 'albumtrackinfo.dart';

part 'albumtracks.g.dart';

@JsonSerializable()
class AlbumTrackModel {
  List<AlbumTrackInfo> track;

  AlbumTrackModel({
    required this.track,
  });

  factory AlbumTrackModel.fromJson(Map<String, dynamic> json) =>
      _$AlbumTrackModelFromJson(json);
  Map<String, dynamic> toJson() => _$AlbumTrackModelToJson(this);
}
