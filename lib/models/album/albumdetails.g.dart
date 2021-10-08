// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'albumdetails.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AlbumDetailModel _$AlbumDetailModelFromJson(Map<String, dynamic> json) {
  return AlbumDetailModel(
    tracks: AlbumTrackModel.fromJson(json['tracks'] as Map<String, dynamic>),
    artist: json['artist'] as String,
    name: json['name'] as String,
  );
}

Map<String, dynamic> _$AlbumDetailModelToJson(AlbumDetailModel instance) =>
    <String, dynamic>{
      'tracks': instance.tracks,
      'artist': instance.artist,
      'name': instance.name,
    };
