import 'package:json_annotation/json_annotation.dart';
import 'artist_bio.dart';

part 'artistdetails.g.dart';

@JsonSerializable()
class ArtistDetailModel {
  String name;
  BioModel bio;

  ArtistDetailModel({
    required this.name,
    required this.bio,
  });

  factory ArtistDetailModel.fromJson(Map<String, dynamic> json) =>
      _$ArtistDetailModelFromJson(json);
  Map<String, dynamic> toJson() => _$ArtistDetailModelToJson(this);
}
