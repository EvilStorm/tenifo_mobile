// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_court_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SearchCourtResponse {

 List<Court> get data; int get total;
/// Create a copy of SearchCourtResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SearchCourtResponseCopyWith<SearchCourtResponse> get copyWith => _$SearchCourtResponseCopyWithImpl<SearchCourtResponse>(this as SearchCourtResponse, _$identity);

  /// Serializes this SearchCourtResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SearchCourtResponse&&const DeepCollectionEquality().equals(other.data, data)&&(identical(other.total, total) || other.total == total));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(data),total);

@override
String toString() {
  return 'SearchCourtResponse(data: $data, total: $total)';
}


}

/// @nodoc
abstract mixin class $SearchCourtResponseCopyWith<$Res>  {
  factory $SearchCourtResponseCopyWith(SearchCourtResponse value, $Res Function(SearchCourtResponse) _then) = _$SearchCourtResponseCopyWithImpl;
@useResult
$Res call({
 List<Court> data, int total
});




}
/// @nodoc
class _$SearchCourtResponseCopyWithImpl<$Res>
    implements $SearchCourtResponseCopyWith<$Res> {
  _$SearchCourtResponseCopyWithImpl(this._self, this._then);

  final SearchCourtResponse _self;
  final $Res Function(SearchCourtResponse) _then;

/// Create a copy of SearchCourtResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? data = null,Object? total = null,}) {
  return _then(_self.copyWith(
data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as List<Court>,total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _SearchCourtResponse implements SearchCourtResponse {
  const _SearchCourtResponse({required final  List<Court> data, required this.total}): _data = data;
  factory _SearchCourtResponse.fromJson(Map<String, dynamic> json) => _$SearchCourtResponseFromJson(json);

 final  List<Court> _data;
@override List<Court> get data {
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_data);
}

@override final  int total;

/// Create a copy of SearchCourtResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SearchCourtResponseCopyWith<_SearchCourtResponse> get copyWith => __$SearchCourtResponseCopyWithImpl<_SearchCourtResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SearchCourtResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SearchCourtResponse&&const DeepCollectionEquality().equals(other._data, _data)&&(identical(other.total, total) || other.total == total));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_data),total);

@override
String toString() {
  return 'SearchCourtResponse(data: $data, total: $total)';
}


}

/// @nodoc
abstract mixin class _$SearchCourtResponseCopyWith<$Res> implements $SearchCourtResponseCopyWith<$Res> {
  factory _$SearchCourtResponseCopyWith(_SearchCourtResponse value, $Res Function(_SearchCourtResponse) _then) = __$SearchCourtResponseCopyWithImpl;
@override @useResult
$Res call({
 List<Court> data, int total
});




}
/// @nodoc
class __$SearchCourtResponseCopyWithImpl<$Res>
    implements _$SearchCourtResponseCopyWith<$Res> {
  __$SearchCourtResponseCopyWithImpl(this._self, this._then);

  final _SearchCourtResponse _self;
  final $Res Function(_SearchCourtResponse) _then;

/// Create a copy of SearchCourtResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? data = null,Object? total = null,}) {
  return _then(_SearchCourtResponse(
data: null == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<Court>,total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
