// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'songdetails.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TrackModel _$TrackModelFromJson(Map<String, dynamic> json) {
  return TrackModel(
    album: json['album'] == null
        ? null
        : TrackAlbumModel.fromJson(json['album'] as Map<String, dynamic>),
    wiki: json['wiki'] == null
        ? null
        : TrackWikiModel.fromJson(json['wiki'] as Map<String, dynamic>),
    name: json['name'] as String,
  );
}

Map<String, dynamic> _$TrackModelToJson(TrackModel instance) =>
    <String, dynamic>{
      'album': instance.album,
      'wiki': instance.wiki,
      'name': instance.name,
    };
