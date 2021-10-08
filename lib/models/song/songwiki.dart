import 'package:json_annotation/json_annotation.dart';

part 'songwiki.g.dart';

@JsonSerializable()
class TrackWikiModel {
  String summary;

  TrackWikiModel({
    required this.summary,
  });

  factory TrackWikiModel.fromJson(Map<String, dynamic> json) =>
      _$TrackWikiModelFromJson(json);
  Map<String, dynamic> toJson() => _$TrackWikiModelToJson(this);
}
