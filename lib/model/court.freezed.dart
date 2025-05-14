// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'court.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Court {

 int get id; String get name; String get address; List<CourtReservationInfo> get cortReservationInfos;
/// Create a copy of Court
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CourtCopyWith<Court> get copyWith => _$CourtCopyWithImpl<Court>(this as Court, _$identity);

  /// Serializes this Court to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Court&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.address, address) || other.address == address)&&const DeepCollectionEquality().equals(other.cortReservationInfos, cortReservationInfos));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,address,const DeepCollectionEquality().hash(cortReservationInfos));

@override
String toString() {
  return 'Court(id: $id, name: $name, address: $address, cortReservationInfos: $cortReservationInfos)';
}


}

/// @nodoc
abstract mixin class $CourtCopyWith<$Res>  {
  factory $CourtCopyWith(Court value, $Res Function(Court) _then) = _$CourtCopyWithImpl;
@useResult
$Res call({
 int id, String name, String address, List<CourtReservationInfo> cortReservationInfos
});




}
/// @nodoc
class _$CourtCopyWithImpl<$Res>
    implements $CourtCopyWith<$Res> {
  _$CourtCopyWithImpl(this._self, this._then);

  final Court _self;
  final $Res Function(Court) _then;

/// Create a copy of Court
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? address = null,Object? cortReservationInfos = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String,cortReservationInfos: null == cortReservationInfos ? _self.cortReservationInfos : cortReservationInfos // ignore: cast_nullable_to_non_nullable
as List<CourtReservationInfo>,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _Court implements Court {
  const _Court({required this.id, required this.name, required this.address, required final  List<CourtReservationInfo> cortReservationInfos}): _cortReservationInfos = cortReservationInfos;
  factory _Court.fromJson(Map<String, dynamic> json) => _$CourtFromJson(json);

@override final  int id;
@override final  String name;
@override final  String address;
 final  List<CourtReservationInfo> _cortReservationInfos;
@override List<CourtReservationInfo> get cortReservationInfos {
  if (_cortReservationInfos is EqualUnmodifiableListView) return _cortReservationInfos;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_cortReservationInfos);
}


/// Create a copy of Court
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CourtCopyWith<_Court> get copyWith => __$CourtCopyWithImpl<_Court>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CourtToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Court&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.address, address) || other.address == address)&&const DeepCollectionEquality().equals(other._cortReservationInfos, _cortReservationInfos));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,address,const DeepCollectionEquality().hash(_cortReservationInfos));

@override
String toString() {
  return 'Court(id: $id, name: $name, address: $address, cortReservationInfos: $cortReservationInfos)';
}


}

/// @nodoc
abstract mixin class _$CourtCopyWith<$Res> implements $CourtCopyWith<$Res> {
  factory _$CourtCopyWith(_Court value, $Res Function(_Court) _then) = __$CourtCopyWithImpl;
@override @useResult
$Res call({
 int id, String name, String address, List<CourtReservationInfo> cortReservationInfos
});




}
/// @nodoc
class __$CourtCopyWithImpl<$Res>
    implements _$CourtCopyWith<$Res> {
  __$CourtCopyWithImpl(this._self, this._then);

  final _Court _self;
  final $Res Function(_Court) _then;

/// Create a copy of Court
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? address = null,Object? cortReservationInfos = null,}) {
  return _then(_Court(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String,cortReservationInfos: null == cortReservationInfos ? _self._cortReservationInfos : cortReservationInfos // ignore: cast_nullable_to_non_nullable
as List<CourtReservationInfo>,
  ));
}


}


/// @nodoc
mixin _$CourtReservationInfo {

 int get id; String get cort; String get cortType; String get year; String get month; List<TimeInfo> get timeInfo;
/// Create a copy of CourtReservationInfo
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CourtReservationInfoCopyWith<CourtReservationInfo> get copyWith => _$CourtReservationInfoCopyWithImpl<CourtReservationInfo>(this as CourtReservationInfo, _$identity);

  /// Serializes this CourtReservationInfo to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CourtReservationInfo&&(identical(other.id, id) || other.id == id)&&(identical(other.cort, cort) || other.cort == cort)&&(identical(other.cortType, cortType) || other.cortType == cortType)&&(identical(other.year, year) || other.year == year)&&(identical(other.month, month) || other.month == month)&&const DeepCollectionEquality().equals(other.timeInfo, timeInfo));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,cort,cortType,year,month,const DeepCollectionEquality().hash(timeInfo));

@override
String toString() {
  return 'CourtReservationInfo(id: $id, cort: $cort, cortType: $cortType, year: $year, month: $month, timeInfo: $timeInfo)';
}


}

/// @nodoc
abstract mixin class $CourtReservationInfoCopyWith<$Res>  {
  factory $CourtReservationInfoCopyWith(CourtReservationInfo value, $Res Function(CourtReservationInfo) _then) = _$CourtReservationInfoCopyWithImpl;
@useResult
$Res call({
 int id, String cort, String cortType, String year, String month, List<TimeInfo> timeInfo
});




}
/// @nodoc
class _$CourtReservationInfoCopyWithImpl<$Res>
    implements $CourtReservationInfoCopyWith<$Res> {
  _$CourtReservationInfoCopyWithImpl(this._self, this._then);

  final CourtReservationInfo _self;
  final $Res Function(CourtReservationInfo) _then;

/// Create a copy of CourtReservationInfo
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? cort = null,Object? cortType = null,Object? year = null,Object? month = null,Object? timeInfo = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,cort: null == cort ? _self.cort : cort // ignore: cast_nullable_to_non_nullable
as String,cortType: null == cortType ? _self.cortType : cortType // ignore: cast_nullable_to_non_nullable
as String,year: null == year ? _self.year : year // ignore: cast_nullable_to_non_nullable
as String,month: null == month ? _self.month : month // ignore: cast_nullable_to_non_nullable
as String,timeInfo: null == timeInfo ? _self.timeInfo : timeInfo // ignore: cast_nullable_to_non_nullable
as List<TimeInfo>,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _CourtReservationInfo implements CourtReservationInfo {
  const _CourtReservationInfo({required this.id, required this.cort, required this.cortType, required this.year, required this.month, required final  List<TimeInfo> timeInfo}): _timeInfo = timeInfo;
  factory _CourtReservationInfo.fromJson(Map<String, dynamic> json) => _$CourtReservationInfoFromJson(json);

@override final  int id;
@override final  String cort;
@override final  String cortType;
@override final  String year;
@override final  String month;
 final  List<TimeInfo> _timeInfo;
@override List<TimeInfo> get timeInfo {
  if (_timeInfo is EqualUnmodifiableListView) return _timeInfo;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_timeInfo);
}


/// Create a copy of CourtReservationInfo
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CourtReservationInfoCopyWith<_CourtReservationInfo> get copyWith => __$CourtReservationInfoCopyWithImpl<_CourtReservationInfo>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CourtReservationInfoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CourtReservationInfo&&(identical(other.id, id) || other.id == id)&&(identical(other.cort, cort) || other.cort == cort)&&(identical(other.cortType, cortType) || other.cortType == cortType)&&(identical(other.year, year) || other.year == year)&&(identical(other.month, month) || other.month == month)&&const DeepCollectionEquality().equals(other._timeInfo, _timeInfo));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,cort,cortType,year,month,const DeepCollectionEquality().hash(_timeInfo));

@override
String toString() {
  return 'CourtReservationInfo(id: $id, cort: $cort, cortType: $cortType, year: $year, month: $month, timeInfo: $timeInfo)';
}


}

/// @nodoc
abstract mixin class _$CourtReservationInfoCopyWith<$Res> implements $CourtReservationInfoCopyWith<$Res> {
  factory _$CourtReservationInfoCopyWith(_CourtReservationInfo value, $Res Function(_CourtReservationInfo) _then) = __$CourtReservationInfoCopyWithImpl;
@override @useResult
$Res call({
 int id, String cort, String cortType, String year, String month, List<TimeInfo> timeInfo
});




}
/// @nodoc
class __$CourtReservationInfoCopyWithImpl<$Res>
    implements _$CourtReservationInfoCopyWith<$Res> {
  __$CourtReservationInfoCopyWithImpl(this._self, this._then);

  final _CourtReservationInfo _self;
  final $Res Function(_CourtReservationInfo) _then;

/// Create a copy of CourtReservationInfo
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? cort = null,Object? cortType = null,Object? year = null,Object? month = null,Object? timeInfo = null,}) {
  return _then(_CourtReservationInfo(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,cort: null == cort ? _self.cort : cort // ignore: cast_nullable_to_non_nullable
as String,cortType: null == cortType ? _self.cortType : cortType // ignore: cast_nullable_to_non_nullable
as String,year: null == year ? _self.year : year // ignore: cast_nullable_to_non_nullable
as String,month: null == month ? _self.month : month // ignore: cast_nullable_to_non_nullable
as String,timeInfo: null == timeInfo ? _self._timeInfo : timeInfo // ignore: cast_nullable_to_non_nullable
as List<TimeInfo>,
  ));
}


}


/// @nodoc
mixin _$TimeInfo {

 int get id; String get day; List<int> get times;
/// Create a copy of TimeInfo
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TimeInfoCopyWith<TimeInfo> get copyWith => _$TimeInfoCopyWithImpl<TimeInfo>(this as TimeInfo, _$identity);

  /// Serializes this TimeInfo to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TimeInfo&&(identical(other.id, id) || other.id == id)&&(identical(other.day, day) || other.day == day)&&const DeepCollectionEquality().equals(other.times, times));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,day,const DeepCollectionEquality().hash(times));

@override
String toString() {
  return 'TimeInfo(id: $id, day: $day, times: $times)';
}


}

/// @nodoc
abstract mixin class $TimeInfoCopyWith<$Res>  {
  factory $TimeInfoCopyWith(TimeInfo value, $Res Function(TimeInfo) _then) = _$TimeInfoCopyWithImpl;
@useResult
$Res call({
 int id, String day, List<int> times
});




}
/// @nodoc
class _$TimeInfoCopyWithImpl<$Res>
    implements $TimeInfoCopyWith<$Res> {
  _$TimeInfoCopyWithImpl(this._self, this._then);

  final TimeInfo _self;
  final $Res Function(TimeInfo) _then;

/// Create a copy of TimeInfo
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? day = null,Object? times = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,day: null == day ? _self.day : day // ignore: cast_nullable_to_non_nullable
as String,times: null == times ? _self.times : times // ignore: cast_nullable_to_non_nullable
as List<int>,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _TimeInfo implements TimeInfo {
  const _TimeInfo({required this.id, required this.day, required final  List<int> times}): _times = times;
  factory _TimeInfo.fromJson(Map<String, dynamic> json) => _$TimeInfoFromJson(json);

@override final  int id;
@override final  String day;
 final  List<int> _times;
@override List<int> get times {
  if (_times is EqualUnmodifiableListView) return _times;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_times);
}


/// Create a copy of TimeInfo
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TimeInfoCopyWith<_TimeInfo> get copyWith => __$TimeInfoCopyWithImpl<_TimeInfo>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TimeInfoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TimeInfo&&(identical(other.id, id) || other.id == id)&&(identical(other.day, day) || other.day == day)&&const DeepCollectionEquality().equals(other._times, _times));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,day,const DeepCollectionEquality().hash(_times));

@override
String toString() {
  return 'TimeInfo(id: $id, day: $day, times: $times)';
}


}

/// @nodoc
abstract mixin class _$TimeInfoCopyWith<$Res> implements $TimeInfoCopyWith<$Res> {
  factory _$TimeInfoCopyWith(_TimeInfo value, $Res Function(_TimeInfo) _then) = __$TimeInfoCopyWithImpl;
@override @useResult
$Res call({
 int id, String day, List<int> times
});




}
/// @nodoc
class __$TimeInfoCopyWithImpl<$Res>
    implements _$TimeInfoCopyWith<$Res> {
  __$TimeInfoCopyWithImpl(this._self, this._then);

  final _TimeInfo _self;
  final $Res Function(_TimeInfo) _then;

/// Create a copy of TimeInfo
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? day = null,Object? times = null,}) {
  return _then(_TimeInfo(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,day: null == day ? _self.day : day // ignore: cast_nullable_to_non_nullable
as String,times: null == times ? _self._times : times // ignore: cast_nullable_to_non_nullable
as List<int>,
  ));
}


}

// dart format on
