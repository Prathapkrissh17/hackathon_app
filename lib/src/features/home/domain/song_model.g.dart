// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'song_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SongImpl _$$SongImplFromJson(Map<String, dynamic> json) => _$SongImpl(
      songName: json['songname'] as String?,
      artist: json['artist'] as String?,
      imageUrl: json['imageurl'] as String?,
    );

Map<String, dynamic> _$$SongImplToJson(_$SongImpl instance) =>
    <String, dynamic>{
      'songname': instance.songName,
      'artist': instance.artist,
      'imageurl': instance.imageUrl,
    };
