// // coverage:ignore-file
// // GENERATED CODE - DO NOT MODIFY BY HAND
// // ignore_for_file: type=lint
// // ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

// part of 'audio_player_cubit.dart';

// // **************************************************************************
// // FreezedGenerator
// // **************************************************************************

// T _$identity<T>(T value) => value;

// final _privateConstructorUsedError = UnsupportedError(
//     'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

// /// @nodoc
// class _$AudioPlayerStateTearOff {
//   const _$AudioPlayerStateTearOff();

//   _AudioPlayerState call(
//       {required AudioPlayerStatus status,
//       required List<Song> playList,
//       required int currentIndex}) {
//     return _AudioPlayerState(
//       status: status,
//       playList: playList,
//       currentIndex: currentIndex,
//     );
//   }
// }

// /// @nodoc
// const $AudioPlayerState = _$AudioPlayerStateTearOff();

// /// @nodoc
// mixin _$AudioPlayerState {
//   AudioPlayerStatus get status => throw _privateConstructorUsedError;
//   List<Song> get playList => throw _privateConstructorUsedError;
//   int get currentIndex => throw _privateConstructorUsedError;

//   @JsonKey(ignore: true)
//   $AudioPlayerStateCopyWith<AudioPlayerState> get copyWith =>
//       throw _privateConstructorUsedError;
// }

// /// @nodoc
// abstract class $AudioPlayerStateCopyWith<$Res> {
//   factory $AudioPlayerStateCopyWith(
//           AudioPlayerState value, $Res Function(AudioPlayerState) then) =
//       _$AudioPlayerStateCopyWithImpl<$Res>;
//   $Res call({AudioPlayerStatus status, List<Song> playList, int currentIndex});

//   $AudioPlayerStatusCopyWith<$Res> get status;
// }

// /// @nodoc
// class _$AudioPlayerStateCopyWithImpl<$Res>
//     implements $AudioPlayerStateCopyWith<$Res> {
//   _$AudioPlayerStateCopyWithImpl(this._value, this._then);

//   final AudioPlayerState _value;
//   // ignore: unused_field
//   final $Res Function(AudioPlayerState) _then;

//   @override
//   $Res call({
//     Object? status = freezed,
//     Object? playList = freezed,
//     Object? currentIndex = freezed,
//   }) {
//     return _then(_value.copyWith(
//       status: status == freezed
//           ? _value.status
//           : status // ignore: cast_nullable_to_non_nullable
//               as AudioPlayerStatus,
//       playList: playList == freezed
//           ? _value.playList
//           : playList // ignore: cast_nullable_to_non_nullable
//               as List<Song>,
//       currentIndex: currentIndex == freezed
//           ? _value.currentIndex
//           : currentIndex // ignore: cast_nullable_to_non_nullable
//               as int,
//     ));
//   }

//   @override
//   $AudioPlayerStatusCopyWith<$Res> get status {
//     return $AudioPlayerStatusCopyWith<$Res>(_value.status, (value) {
//       return _then(_value.copyWith(status: value));
//     });
//   }
// }

// /// @nodoc
// abstract class _$AudioPlayerStateCopyWith<$Res>
//     implements $AudioPlayerStateCopyWith<$Res> {
//   factory _$AudioPlayerStateCopyWith(
//           _AudioPlayerState value, $Res Function(_AudioPlayerState) then) =
//       __$AudioPlayerStateCopyWithImpl<$Res>;
//   @override
//   $Res call({AudioPlayerStatus status, List<Song> playList, int currentIndex});

//   @override
//   $AudioPlayerStatusCopyWith<$Res> get status;
// }

// /// @nodoc
// class __$AudioPlayerStateCopyWithImpl<$Res>
//     extends _$AudioPlayerStateCopyWithImpl<$Res>
//     implements _$AudioPlayerStateCopyWith<$Res> {
//   __$AudioPlayerStateCopyWithImpl(
//       _AudioPlayerState _value, $Res Function(_AudioPlayerState) _then)
//       : super(_value, (v) => _then(v as _AudioPlayerState));

//   @override
//   _AudioPlayerState get _value => super._value as _AudioPlayerState;

//   @override
//   $Res call({
//     Object? status = freezed,
//     Object? playList = freezed,
//     Object? currentIndex = freezed,
//   }) {
//     return _then(_AudioPlayerState(
//       status: status == freezed
//           ? _value.status
//           : status // ignore: cast_nullable_to_non_nullable
//               as AudioPlayerStatus,
//       playList: playList == freezed
//           ? _value.playList
//           : playList // ignore: cast_nullable_to_non_nullable
//               as List<Song>,
//       currentIndex: currentIndex == freezed
//           ? _value.currentIndex
//           : currentIndex // ignore: cast_nullable_to_non_nullable
//               as int,
//     ));
//   }
// }

// /// @nodoc

// class _$_AudioPlayerState extends _AudioPlayerState {
//   const _$_AudioPlayerState(
//       {required this.status,
//       required this.playList,
//       required this.currentIndex})
//       : super._();

//   @override
//   final AudioPlayerStatus status;
//   @override
//   final List<Song> playList;
//   @override
//   final int currentIndex;

//   @override
//   String toString() {
//     return 'AudioPlayerState(status: $status, playList: $playList, currentIndex: $currentIndex)';
//   }

//   @override
//   bool operator ==(dynamic other) {
//     return identical(this, other) ||
//         (other.runtimeType == runtimeType &&
//             other is _AudioPlayerState &&
//             const DeepCollectionEquality().equals(other.status, status) &&
//             const DeepCollectionEquality().equals(other.playList, playList) &&
//             const DeepCollectionEquality()
//                 .equals(other.currentIndex, currentIndex));
//   }

//   @override
//   int get hashCode => Object.hash(
//       runtimeType,
//       const DeepCollectionEquality().hash(status),
//       const DeepCollectionEquality().hash(playList),
//       const DeepCollectionEquality().hash(currentIndex));

//   @JsonKey(ignore: true)
//   @override
//   _$AudioPlayerStateCopyWith<_AudioPlayerState> get copyWith =>
//       __$AudioPlayerStateCopyWithImpl<_AudioPlayerState>(this, _$identity);
// }

// abstract class _AudioPlayerState extends AudioPlayerState {
//   const factory _AudioPlayerState(
//       {required AudioPlayerStatus status,
//       required List<Song> playList,
//       required int currentIndex}) = _$_AudioPlayerState;
//   const _AudioPlayerState._() : super._();

//   @override
//   AudioPlayerStatus get status;
//   @override
//   List<Song> get playList;
//   @override
//   int get currentIndex;
//   @override
//   @JsonKey(ignore: true)
//   _$AudioPlayerStateCopyWith<_AudioPlayerState> get copyWith =>
//       throw _privateConstructorUsedError;
// }

// /// @nodoc
// class _$AudioPlayerStatusTearOff {
//   const _$AudioPlayerStatusTearOff();

//   _Idle idle() {
//     return const _Idle();
//   }

//   _Loading loading() {
//     return const _Loading();
//   }

//   _Buffering buffering() {
//     return const _Buffering();
//   }

//   _Ready ready() {
//     return const _Ready();
//   }

//   _Playing playing() {
//     return const _Playing();
//   }

//   _Completed completed() {
//     return const _Completed();
//   }

//   _Failure failure() {
//     return const _Failure();
//   }
// }

// /// @nodoc
// const $AudioPlayerStatus = _$AudioPlayerStatusTearOff();

// /// @nodoc
// mixin _$AudioPlayerStatus {
//   @optionalTypeArgs
//   TResult when<TResult extends Object?>({
//     required TResult Function() idle,
//     required TResult Function() loading,
//     required TResult Function() buffering,
//     required TResult Function() ready,
//     required TResult Function() playing,
//     required TResult Function() completed,
//     required TResult Function() failure,
//   }) =>
//       throw _privateConstructorUsedError;
//   @optionalTypeArgs
//   TResult? whenOrNull<TResult extends Object?>({
//     TResult Function()? idle,
//     TResult Function()? loading,
//     TResult Function()? buffering,
//     TResult Function()? ready,
//     TResult Function()? playing,
//     TResult Function()? completed,
//     TResult Function()? failure,
//   }) =>
//       throw _privateConstructorUsedError;
//   @optionalTypeArgs
//   TResult maybeWhen<TResult extends Object?>({
//     TResult Function()? idle,
//     TResult Function()? loading,
//     TResult Function()? buffering,
//     TResult Function()? ready,
//     TResult Function()? playing,
//     TResult Function()? completed,
//     TResult Function()? failure,
//     required TResult orElse(),
//   }) =>
//       throw _privateConstructorUsedError;
//   @optionalTypeArgs
//   TResult map<TResult extends Object?>({
//     required TResult Function(_Idle value) idle,
//     required TResult Function(_Loading value) loading,
//     required TResult Function(_Buffering value) buffering,
//     required TResult Function(_Ready value) ready,
//     required TResult Function(_Playing value) playing,
//     required TResult Function(_Completed value) completed,
//     required TResult Function(_Failure value) failure,
//   }) =>
//       throw _privateConstructorUsedError;
//   @optionalTypeArgs
//   TResult? mapOrNull<TResult extends Object?>({
//     TResult Function(_Idle value)? idle,
//     TResult Function(_Loading value)? loading,
//     TResult Function(_Buffering value)? buffering,
//     TResult Function(_Ready value)? ready,
//     TResult Function(_Playing value)? playing,
//     TResult Function(_Completed value)? completed,
//     TResult Function(_Failure value)? failure,
//   }) =>
//       throw _privateConstructorUsedError;
//   @optionalTypeArgs
//   TResult maybeMap<TResult extends Object?>({
//     TResult Function(_Idle value)? idle,
//     TResult Function(_Loading value)? loading,
//     TResult Function(_Buffering value)? buffering,
//     TResult Function(_Ready value)? ready,
//     TResult Function(_Playing value)? playing,
//     TResult Function(_Completed value)? completed,
//     TResult Function(_Failure value)? failure,
//     required TResult orElse(),
//   }) =>
//       throw _privateConstructorUsedError;
// }

// /// @nodoc
// abstract class $AudioPlayerStatusCopyWith<$Res> {
//   factory $AudioPlayerStatusCopyWith(
//           AudioPlayerStatus value, $Res Function(AudioPlayerStatus) then) =
//       _$AudioPlayerStatusCopyWithImpl<$Res>;
// }

// /// @nodoc
// class _$AudioPlayerStatusCopyWithImpl<$Res>
//     implements $AudioPlayerStatusCopyWith<$Res> {
//   _$AudioPlayerStatusCopyWithImpl(this._value, this._then);

//   final AudioPlayerStatus _value;
//   // ignore: unused_field
//   final $Res Function(AudioPlayerStatus) _then;
// }

// /// @nodoc
// abstract class _$IdleCopyWith<$Res> {
//   factory _$IdleCopyWith(_Idle value, $Res Function(_Idle) then) =
//       __$IdleCopyWithImpl<$Res>;
// }

// /// @nodoc
// class __$IdleCopyWithImpl<$Res> extends _$AudioPlayerStatusCopyWithImpl<$Res>
//     implements _$IdleCopyWith<$Res> {
//   __$IdleCopyWithImpl(_Idle _value, $Res Function(_Idle) _then)
//       : super(_value, (v) => _then(v as _Idle));

//   @override
//   _Idle get _value => super._value as _Idle;
// }

// /// @nodoc

// class _$_Idle implements _Idle {
//   const _$_Idle();

//   @override
//   String toString() {
//     return 'AudioPlayerStatus.idle()';
//   }

//   @override
//   bool operator ==(dynamic other) {
//     return identical(this, other) ||
//         (other.runtimeType == runtimeType && other is _Idle);
//   }

//   @override
//   int get hashCode => runtimeType.hashCode;

//   @override
//   @optionalTypeArgs
//   TResult when<TResult extends Object?>({
//     required TResult Function() idle,
//     required TResult Function() loading,
//     required TResult Function() buffering,
//     required TResult Function() ready,
//     required TResult Function() playing,
//     required TResult Function() completed,
//     required TResult Function() failure,
//   }) {
//     return idle();
//   }

//   @override
//   @optionalTypeArgs
//   TResult? whenOrNull<TResult extends Object?>({
//     TResult Function()? idle,
//     TResult Function()? loading,
//     TResult Function()? buffering,
//     TResult Function()? ready,
//     TResult Function()? playing,
//     TResult Function()? completed,
//     TResult Function()? failure,
//   }) {
//     return idle?.call();
//   }

//   @override
//   @optionalTypeArgs
//   TResult maybeWhen<TResult extends Object?>({
//     TResult Function()? idle,
//     TResult Function()? loading,
//     TResult Function()? buffering,
//     TResult Function()? ready,
//     TResult Function()? playing,
//     TResult Function()? completed,
//     TResult Function()? failure,
//     required TResult orElse(),
//   }) {
//     if (idle != null) {
//       return idle();
//     }
//     return orElse();
//   }

//   @override
//   @optionalTypeArgs
//   TResult map<TResult extends Object?>({
//     required TResult Function(_Idle value) idle,
//     required TResult Function(_Loading value) loading,
//     required TResult Function(_Buffering value) buffering,
//     required TResult Function(_Ready value) ready,
//     required TResult Function(_Playing value) playing,
//     required TResult Function(_Completed value) completed,
//     required TResult Function(_Failure value) failure,
//   }) {
//     return idle(this);
//   }

//   @override
//   @optionalTypeArgs
//   TResult? mapOrNull<TResult extends Object?>({
//     TResult Function(_Idle value)? idle,
//     TResult Function(_Loading value)? loading,
//     TResult Function(_Buffering value)? buffering,
//     TResult Function(_Ready value)? ready,
//     TResult Function(_Playing value)? playing,
//     TResult Function(_Completed value)? completed,
//     TResult Function(_Failure value)? failure,
//   }) {
//     return idle?.call(this);
//   }

//   @override
//   @optionalTypeArgs
//   TResult maybeMap<TResult extends Object?>({
//     TResult Function(_Idle value)? idle,
//     TResult Function(_Loading value)? loading,
//     TResult Function(_Buffering value)? buffering,
//     TResult Function(_Ready value)? ready,
//     TResult Function(_Playing value)? playing,
//     TResult Function(_Completed value)? completed,
//     TResult Function(_Failure value)? failure,
//     required TResult orElse(),
//   }) {
//     if (idle != null) {
//       return idle(this);
//     }
//     return orElse();
//   }
// }

// abstract class _Idle implements AudioPlayerStatus {
//   const factory _Idle() = _$_Idle;
// }

// /// @nodoc
// abstract class _$LoadingCopyWith<$Res> {
//   factory _$LoadingCopyWith(_Loading value, $Res Function(_Loading) then) =
//       __$LoadingCopyWithImpl<$Res>;
// }

// /// @nodoc
// class __$LoadingCopyWithImpl<$Res> extends _$AudioPlayerStatusCopyWithImpl<$Res>
//     implements _$LoadingCopyWith<$Res> {
//   __$LoadingCopyWithImpl(_Loading _value, $Res Function(_Loading) _then)
//       : super(_value, (v) => _then(v as _Loading));

//   @override
//   _Loading get _value => super._value as _Loading;
// }

// /// @nodoc

// class _$_Loading implements _Loading {
//   const _$_Loading();

//   @override
//   String toString() {
//     return 'AudioPlayerStatus.loading()';
//   }

//   @override
//   bool operator ==(dynamic other) {
//     return identical(this, other) ||
//         (other.runtimeType == runtimeType && other is _Loading);
//   }

//   @override
//   int get hashCode => runtimeType.hashCode;

//   @override
//   @optionalTypeArgs
//   TResult when<TResult extends Object?>({
//     required TResult Function() idle,
//     required TResult Function() loading,
//     required TResult Function() buffering,
//     required TResult Function() ready,
//     required TResult Function() playing,
//     required TResult Function() completed,
//     required TResult Function() failure,
//   }) {
//     return loading();
//   }

//   @override
//   @optionalTypeArgs
//   TResult? whenOrNull<TResult extends Object?>({
//     TResult Function()? idle,
//     TResult Function()? loading,
//     TResult Function()? buffering,
//     TResult Function()? ready,
//     TResult Function()? playing,
//     TResult Function()? completed,
//     TResult Function()? failure,
//   }) {
//     return loading?.call();
//   }

//   @override
//   @optionalTypeArgs
//   TResult maybeWhen<TResult extends Object?>({
//     TResult Function()? idle,
//     TResult Function()? loading,
//     TResult Function()? buffering,
//     TResult Function()? ready,
//     TResult Function()? playing,
//     TResult Function()? completed,
//     TResult Function()? failure,
//     required TResult orElse(),
//   }) {
//     if (loading != null) {
//       return loading();
//     }
//     return orElse();
//   }

//   @override
//   @optionalTypeArgs
//   TResult map<TResult extends Object?>({
//     required TResult Function(_Idle value) idle,
//     required TResult Function(_Loading value) loading,
//     required TResult Function(_Buffering value) buffering,
//     required TResult Function(_Ready value) ready,
//     required TResult Function(_Playing value) playing,
//     required TResult Function(_Completed value) completed,
//     required TResult Function(_Failure value) failure,
//   }) {
//     return loading(this);
//   }

//   @override
//   @optionalTypeArgs
//   TResult? mapOrNull<TResult extends Object?>({
//     TResult Function(_Idle value)? idle,
//     TResult Function(_Loading value)? loading,
//     TResult Function(_Buffering value)? buffering,
//     TResult Function(_Ready value)? ready,
//     TResult Function(_Playing value)? playing,
//     TResult Function(_Completed value)? completed,
//     TResult Function(_Failure value)? failure,
//   }) {
//     return loading?.call(this);
//   }

//   @override
//   @optionalTypeArgs
//   TResult maybeMap<TResult extends Object?>({
//     TResult Function(_Idle value)? idle,
//     TResult Function(_Loading value)? loading,
//     TResult Function(_Buffering value)? buffering,
//     TResult Function(_Ready value)? ready,
//     TResult Function(_Playing value)? playing,
//     TResult Function(_Completed value)? completed,
//     TResult Function(_Failure value)? failure,
//     required TResult orElse(),
//   }) {
//     if (loading != null) {
//       return loading(this);
//     }
//     return orElse();
//   }
// }

// abstract class _Loading implements AudioPlayerStatus {
//   const factory _Loading() = _$_Loading;
// }

// /// @nodoc
// abstract class _$BufferingCopyWith<$Res> {
//   factory _$BufferingCopyWith(
//           _Buffering value, $Res Function(_Buffering) then) =
//       __$BufferingCopyWithImpl<$Res>;
// }

// /// @nodoc
// class __$BufferingCopyWithImpl<$Res>
//     extends _$AudioPlayerStatusCopyWithImpl<$Res>
//     implements _$BufferingCopyWith<$Res> {
//   __$BufferingCopyWithImpl(_Buffering _value, $Res Function(_Buffering) _then)
//       : super(_value, (v) => _then(v as _Buffering));

//   @override
//   _Buffering get _value => super._value as _Buffering;
// }

// /// @nodoc

// class _$_Buffering implements _Buffering {
//   const _$_Buffering();

//   @override
//   String toString() {
//     return 'AudioPlayerStatus.buffering()';
//   }

//   @override
//   bool operator ==(dynamic other) {
//     return identical(this, other) ||
//         (other.runtimeType == runtimeType && other is _Buffering);
//   }

//   @override
//   int get hashCode => runtimeType.hashCode;

//   @override
//   @optionalTypeArgs
//   TResult when<TResult extends Object?>({
//     required TResult Function() idle,
//     required TResult Function() loading,
//     required TResult Function() buffering,
//     required TResult Function() ready,
//     required TResult Function() playing,
//     required TResult Function() completed,
//     required TResult Function() failure,
//   }) {
//     return buffering();
//   }

//   @override
//   @optionalTypeArgs
//   TResult? whenOrNull<TResult extends Object?>({
//     TResult Function()? idle,
//     TResult Function()? loading,
//     TResult Function()? buffering,
//     TResult Function()? ready,
//     TResult Function()? playing,
//     TResult Function()? completed,
//     TResult Function()? failure,
//   }) {
//     return buffering?.call();
//   }

//   @override
//   @optionalTypeArgs
//   TResult maybeWhen<TResult extends Object?>({
//     TResult Function()? idle,
//     TResult Function()? loading,
//     TResult Function()? buffering,
//     TResult Function()? ready,
//     TResult Function()? playing,
//     TResult Function()? completed,
//     TResult Function()? failure,
//     required TResult orElse(),
//   }) {
//     if (buffering != null) {
//       return buffering();
//     }
//     return orElse();
//   }

//   @override
//   @optionalTypeArgs
//   TResult map<TResult extends Object?>({
//     required TResult Function(_Idle value) idle,
//     required TResult Function(_Loading value) loading,
//     required TResult Function(_Buffering value) buffering,
//     required TResult Function(_Ready value) ready,
//     required TResult Function(_Playing value) playing,
//     required TResult Function(_Completed value) completed,
//     required TResult Function(_Failure value) failure,
//   }) {
//     return buffering(this);
//   }

//   @override
//   @optionalTypeArgs
//   TResult? mapOrNull<TResult extends Object?>({
//     TResult Function(_Idle value)? idle,
//     TResult Function(_Loading value)? loading,
//     TResult Function(_Buffering value)? buffering,
//     TResult Function(_Ready value)? ready,
//     TResult Function(_Playing value)? playing,
//     TResult Function(_Completed value)? completed,
//     TResult Function(_Failure value)? failure,
//   }) {
//     return buffering?.call(this);
//   }

//   @override
//   @optionalTypeArgs
//   TResult maybeMap<TResult extends Object?>({
//     TResult Function(_Idle value)? idle,
//     TResult Function(_Loading value)? loading,
//     TResult Function(_Buffering value)? buffering,
//     TResult Function(_Ready value)? ready,
//     TResult Function(_Playing value)? playing,
//     TResult Function(_Completed value)? completed,
//     TResult Function(_Failure value)? failure,
//     required TResult orElse(),
//   }) {
//     if (buffering != null) {
//       return buffering(this);
//     }
//     return orElse();
//   }
// }

// abstract class _Buffering implements AudioPlayerStatus {
//   const factory _Buffering() = _$_Buffering;
// }

// /// @nodoc
// abstract class _$ReadyCopyWith<$Res> {
//   factory _$ReadyCopyWith(_Ready value, $Res Function(_Ready) then) =
//       __$ReadyCopyWithImpl<$Res>;
// }

// /// @nodoc
// class __$ReadyCopyWithImpl<$Res> extends _$AudioPlayerStatusCopyWithImpl<$Res>
//     implements _$ReadyCopyWith<$Res> {
//   __$ReadyCopyWithImpl(_Ready _value, $Res Function(_Ready) _then)
//       : super(_value, (v) => _then(v as _Ready));

//   @override
//   _Ready get _value => super._value as _Ready;
// }

// /// @nodoc

// class _$_Ready implements _Ready {
//   const _$_Ready();

//   @override
//   String toString() {
//     return 'AudioPlayerStatus.ready()';
//   }

//   @override
//   bool operator ==(dynamic other) {
//     return identical(this, other) ||
//         (other.runtimeType == runtimeType && other is _Ready);
//   }

//   @override
//   int get hashCode => runtimeType.hashCode;

//   @override
//   @optionalTypeArgs
//   TResult when<TResult extends Object?>({
//     required TResult Function() idle,
//     required TResult Function() loading,
//     required TResult Function() buffering,
//     required TResult Function() ready,
//     required TResult Function() playing,
//     required TResult Function() completed,
//     required TResult Function() failure,
//   }) {
//     return ready();
//   }

//   @override
//   @optionalTypeArgs
//   TResult? whenOrNull<TResult extends Object?>({
//     TResult Function()? idle,
//     TResult Function()? loading,
//     TResult Function()? buffering,
//     TResult Function()? ready,
//     TResult Function()? playing,
//     TResult Function()? completed,
//     TResult Function()? failure,
//   }) {
//     return ready?.call();
//   }

//   @override
//   @optionalTypeArgs
//   TResult maybeWhen<TResult extends Object?>({
//     TResult Function()? idle,
//     TResult Function()? loading,
//     TResult Function()? buffering,
//     TResult Function()? ready,
//     TResult Function()? playing,
//     TResult Function()? completed,
//     TResult Function()? failure,
//     required TResult orElse(),
//   }) {
//     if (ready != null) {
//       return ready();
//     }
//     return orElse();
//   }

//   @override
//   @optionalTypeArgs
//   TResult map<TResult extends Object?>({
//     required TResult Function(_Idle value) idle,
//     required TResult Function(_Loading value) loading,
//     required TResult Function(_Buffering value) buffering,
//     required TResult Function(_Ready value) ready,
//     required TResult Function(_Playing value) playing,
//     required TResult Function(_Completed value) completed,
//     required TResult Function(_Failure value) failure,
//   }) {
//     return ready(this);
//   }

//   @override
//   @optionalTypeArgs
//   TResult? mapOrNull<TResult extends Object?>({
//     TResult Function(_Idle value)? idle,
//     TResult Function(_Loading value)? loading,
//     TResult Function(_Buffering value)? buffering,
//     TResult Function(_Ready value)? ready,
//     TResult Function(_Playing value)? playing,
//     TResult Function(_Completed value)? completed,
//     TResult Function(_Failure value)? failure,
//   }) {
//     return ready?.call(this);
//   }

//   @override
//   @optionalTypeArgs
//   TResult maybeMap<TResult extends Object?>({
//     TResult Function(_Idle value)? idle,
//     TResult Function(_Loading value)? loading,
//     TResult Function(_Buffering value)? buffering,
//     TResult Function(_Ready value)? ready,
//     TResult Function(_Playing value)? playing,
//     TResult Function(_Completed value)? completed,
//     TResult Function(_Failure value)? failure,
//     required TResult orElse(),
//   }) {
//     if (ready != null) {
//       return ready(this);
//     }
//     return orElse();
//   }
// }

// abstract class _Ready implements AudioPlayerStatus {
//   const factory _Ready() = _$_Ready;
// }

// /// @nodoc
// abstract class _$PlayingCopyWith<$Res> {
//   factory _$PlayingCopyWith(_Playing value, $Res Function(_Playing) then) =
//       __$PlayingCopyWithImpl<$Res>;
// }

// /// @nodoc
// class __$PlayingCopyWithImpl<$Res> extends _$AudioPlayerStatusCopyWithImpl<$Res>
//     implements _$PlayingCopyWith<$Res> {
//   __$PlayingCopyWithImpl(_Playing _value, $Res Function(_Playing) _then)
//       : super(_value, (v) => _then(v as _Playing));

//   @override
//   _Playing get _value => super._value as _Playing;
// }

// /// @nodoc

// class _$_Playing implements _Playing {
//   const _$_Playing();

//   @override
//   String toString() {
//     return 'AudioPlayerStatus.playing()';
//   }

//   @override
//   bool operator ==(dynamic other) {
//     return identical(this, other) ||
//         (other.runtimeType == runtimeType && other is _Playing);
//   }

//   @override
//   int get hashCode => runtimeType.hashCode;

//   @override
//   @optionalTypeArgs
//   TResult when<TResult extends Object?>({
//     required TResult Function() idle,
//     required TResult Function() loading,
//     required TResult Function() buffering,
//     required TResult Function() ready,
//     required TResult Function() playing,
//     required TResult Function() completed,
//     required TResult Function() failure,
//   }) {
//     return playing();
//   }

//   @override
//   @optionalTypeArgs
//   TResult? whenOrNull<TResult extends Object?>({
//     TResult Function()? idle,
//     TResult Function()? loading,
//     TResult Function()? buffering,
//     TResult Function()? ready,
//     TResult Function()? playing,
//     TResult Function()? completed,
//     TResult Function()? failure,
//   }) {
//     return playing?.call();
//   }

//   @override
//   @optionalTypeArgs
//   TResult maybeWhen<TResult extends Object?>({
//     TResult Function()? idle,
//     TResult Function()? loading,
//     TResult Function()? buffering,
//     TResult Function()? ready,
//     TResult Function()? playing,
//     TResult Function()? completed,
//     TResult Function()? failure,
//     required TResult orElse(),
//   }) {
//     if (playing != null) {
//       return playing();
//     }
//     return orElse();
//   }

//   @override
//   @optionalTypeArgs
//   TResult map<TResult extends Object?>({
//     required TResult Function(_Idle value) idle,
//     required TResult Function(_Loading value) loading,
//     required TResult Function(_Buffering value) buffering,
//     required TResult Function(_Ready value) ready,
//     required TResult Function(_Playing value) playing,
//     required TResult Function(_Completed value) completed,
//     required TResult Function(_Failure value) failure,
//   }) {
//     return playing(this);
//   }

//   @override
//   @optionalTypeArgs
//   TResult? mapOrNull<TResult extends Object?>({
//     TResult Function(_Idle value)? idle,
//     TResult Function(_Loading value)? loading,
//     TResult Function(_Buffering value)? buffering,
//     TResult Function(_Ready value)? ready,
//     TResult Function(_Playing value)? playing,
//     TResult Function(_Completed value)? completed,
//     TResult Function(_Failure value)? failure,
//   }) {
//     return playing?.call(this);
//   }

//   @override
//   @optionalTypeArgs
//   TResult maybeMap<TResult extends Object?>({
//     TResult Function(_Idle value)? idle,
//     TResult Function(_Loading value)? loading,
//     TResult Function(_Buffering value)? buffering,
//     TResult Function(_Ready value)? ready,
//     TResult Function(_Playing value)? playing,
//     TResult Function(_Completed value)? completed,
//     TResult Function(_Failure value)? failure,
//     required TResult orElse(),
//   }) {
//     if (playing != null) {
//       return playing(this);
//     }
//     return orElse();
//   }
// }

// abstract class _Playing implements AudioPlayerStatus {
//   const factory _Playing() = _$_Playing;
// }

// /// @nodoc
// abstract class _$CompletedCopyWith<$Res> {
//   factory _$CompletedCopyWith(
//           _Completed value, $Res Function(_Completed) then) =
//       __$CompletedCopyWithImpl<$Res>;
// }

// /// @nodoc
// class __$CompletedCopyWithImpl<$Res>
//     extends _$AudioPlayerStatusCopyWithImpl<$Res>
//     implements _$CompletedCopyWith<$Res> {
//   __$CompletedCopyWithImpl(_Completed _value, $Res Function(_Completed) _then)
//       : super(_value, (v) => _then(v as _Completed));

//   @override
//   _Completed get _value => super._value as _Completed;
// }

// /// @nodoc

// class _$_Completed implements _Completed {
//   const _$_Completed();

//   @override
//   String toString() {
//     return 'AudioPlayerStatus.completed()';
//   }

//   @override
//   bool operator ==(dynamic other) {
//     return identical(this, other) ||
//         (other.runtimeType == runtimeType && other is _Completed);
//   }

//   @override
//   int get hashCode => runtimeType.hashCode;

//   @override
//   @optionalTypeArgs
//   TResult when<TResult extends Object?>({
//     required TResult Function() idle,
//     required TResult Function() loading,
//     required TResult Function() buffering,
//     required TResult Function() ready,
//     required TResult Function() playing,
//     required TResult Function() completed,
//     required TResult Function() failure,
//   }) {
//     return completed();
//   }

//   @override
//   @optionalTypeArgs
//   TResult? whenOrNull<TResult extends Object?>({
//     TResult Function()? idle,
//     TResult Function()? loading,
//     TResult Function()? buffering,
//     TResult Function()? ready,
//     TResult Function()? playing,
//     TResult Function()? completed,
//     TResult Function()? failure,
//   }) {
//     return completed?.call();
//   }

//   @override
//   @optionalTypeArgs
//   TResult maybeWhen<TResult extends Object?>({
//     TResult Function()? idle,
//     TResult Function()? loading,
//     TResult Function()? buffering,
//     TResult Function()? ready,
//     TResult Function()? playing,
//     TResult Function()? completed,
//     TResult Function()? failure,
//     required TResult orElse(),
//   }) {
//     if (completed != null) {
//       return completed();
//     }
//     return orElse();
//   }

//   @override
//   @optionalTypeArgs
//   TResult map<TResult extends Object?>({
//     required TResult Function(_Idle value) idle,
//     required TResult Function(_Loading value) loading,
//     required TResult Function(_Buffering value) buffering,
//     required TResult Function(_Ready value) ready,
//     required TResult Function(_Playing value) playing,
//     required TResult Function(_Completed value) completed,
//     required TResult Function(_Failure value) failure,
//   }) {
//     return completed(this);
//   }

//   @override
//   @optionalTypeArgs
//   TResult? mapOrNull<TResult extends Object?>({
//     TResult Function(_Idle value)? idle,
//     TResult Function(_Loading value)? loading,
//     TResult Function(_Buffering value)? buffering,
//     TResult Function(_Ready value)? ready,
//     TResult Function(_Playing value)? playing,
//     TResult Function(_Completed value)? completed,
//     TResult Function(_Failure value)? failure,
//   }) {
//     return completed?.call(this);
//   }

//   @override
//   @optionalTypeArgs
//   TResult maybeMap<TResult extends Object?>({
//     TResult Function(_Idle value)? idle,
//     TResult Function(_Loading value)? loading,
//     TResult Function(_Buffering value)? buffering,
//     TResult Function(_Ready value)? ready,
//     TResult Function(_Playing value)? playing,
//     TResult Function(_Completed value)? completed,
//     TResult Function(_Failure value)? failure,
//     required TResult orElse(),
//   }) {
//     if (completed != null) {
//       return completed(this);
//     }
//     return orElse();
//   }
// }

// abstract class _Completed implements AudioPlayerStatus {
//   const factory _Completed() = _$_Completed;
// }

// /// @nodoc
// abstract class _$FailureCopyWith<$Res> {
//   factory _$FailureCopyWith(_Failure value, $Res Function(_Failure) then) =
//       __$FailureCopyWithImpl<$Res>;
// }

// /// @nodoc
// class __$FailureCopyWithImpl<$Res> extends _$AudioPlayerStatusCopyWithImpl<$Res>
//     implements _$FailureCopyWith<$Res> {
//   __$FailureCopyWithImpl(_Failure _value, $Res Function(_Failure) _then)
//       : super(_value, (v) => _then(v as _Failure));

//   @override
//   _Failure get _value => super._value as _Failure;
// }

// /// @nodoc

// class _$_Failure implements _Failure {
//   const _$_Failure();

//   @override
//   String toString() {
//     return 'AudioPlayerStatus.failure()';
//   }

//   @override
//   bool operator ==(dynamic other) {
//     return identical(this, other) ||
//         (other.runtimeType == runtimeType && other is _Failure);
//   }

//   @override
//   int get hashCode => runtimeType.hashCode;

//   @override
//   @optionalTypeArgs
//   TResult when<TResult extends Object?>({
//     required TResult Function() idle,
//     required TResult Function() loading,
//     required TResult Function() buffering,
//     required TResult Function() ready,
//     required TResult Function() playing,
//     required TResult Function() completed,
//     required TResult Function() failure,
//   }) {
//     return failure();
//   }

//   @override
//   @optionalTypeArgs
//   TResult? whenOrNull<TResult extends Object?>({
//     TResult Function()? idle,
//     TResult Function()? loading,
//     TResult Function()? buffering,
//     TResult Function()? ready,
//     TResult Function()? playing,
//     TResult Function()? completed,
//     TResult Function()? failure,
//   }) {
//     return failure?.call();
//   }

//   @override
//   @optionalTypeArgs
//   TResult maybeWhen<TResult extends Object?>({
//     TResult Function()? idle,
//     TResult Function()? loading,
//     TResult Function()? buffering,
//     TResult Function()? ready,
//     TResult Function()? playing,
//     TResult Function()? completed,
//     TResult Function()? failure,
//     required TResult orElse(),
//   }) {
//     if (failure != null) {
//       return failure();
//     }
//     return orElse();
//   }

//   @override
//   @optionalTypeArgs
//   TResult map<TResult extends Object?>({
//     required TResult Function(_Idle value) idle,
//     required TResult Function(_Loading value) loading,
//     required TResult Function(_Buffering value) buffering,
//     required TResult Function(_Ready value) ready,
//     required TResult Function(_Playing value) playing,
//     required TResult Function(_Completed value) completed,
//     required TResult Function(_Failure value) failure,
//   }) {
//     return failure(this);
//   }

//   @override
//   @optionalTypeArgs
//   TResult? mapOrNull<TResult extends Object?>({
//     TResult Function(_Idle value)? idle,
//     TResult Function(_Loading value)? loading,
//     TResult Function(_Buffering value)? buffering,
//     TResult Function(_Ready value)? ready,
//     TResult Function(_Playing value)? playing,
//     TResult Function(_Completed value)? completed,
//     TResult Function(_Failure value)? failure,
//   }) {
//     return failure?.call(this);
//   }

//   @override
//   @optionalTypeArgs
//   TResult maybeMap<TResult extends Object?>({
//     TResult Function(_Idle value)? idle,
//     TResult Function(_Loading value)? loading,
//     TResult Function(_Buffering value)? buffering,
//     TResult Function(_Ready value)? ready,
//     TResult Function(_Playing value)? playing,
//     TResult Function(_Completed value)? completed,
//     TResult Function(_Failure value)? failure,
//     required TResult orElse(),
//   }) {
//     if (failure != null) {
//       return failure(this);
//     }
//     return orElse();
//   }
// }

// abstract class _Failure implements AudioPlayerStatus {
//   const factory _Failure() = _$_Failure;
// }
