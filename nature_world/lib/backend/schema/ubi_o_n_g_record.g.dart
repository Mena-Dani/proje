// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ubi_o_n_g_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<UbiONGRecord> _$ubiONGRecordSerializer =
    new _$UbiONGRecordSerializer();

class _$UbiONGRecordSerializer implements StructuredSerializer<UbiONGRecord> {
  @override
  final Iterable<Type> types = const [UbiONGRecord, _$UbiONGRecord];
  @override
  final String wireName = 'UbiONGRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, UbiONGRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.ubi;
    if (value != null) {
      result
        ..add('ubi')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
    }
    value = object.reference;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
    }
    return result;
  }

  @override
  UbiONGRecord deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new UbiONGRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'ubi':
          result.ubi = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
        case 'Document__Reference__Field':
          result.reference = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
      }
    }

    return result.build();
  }
}

class _$UbiONGRecord extends UbiONGRecord {
  @override
  final DocumentReference<Object> ubi;
  @override
  final DocumentReference<Object> reference;

  factory _$UbiONGRecord([void Function(UbiONGRecordBuilder) updates]) =>
      (new UbiONGRecordBuilder()..update(updates)).build();

  _$UbiONGRecord._({this.ubi, this.reference}) : super._();

  @override
  UbiONGRecord rebuild(void Function(UbiONGRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UbiONGRecordBuilder toBuilder() => new UbiONGRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UbiONGRecord &&
        ubi == other.ubi &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, ubi.hashCode), reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('UbiONGRecord')
          ..add('ubi', ubi)
          ..add('reference', reference))
        .toString();
  }
}

class UbiONGRecordBuilder
    implements Builder<UbiONGRecord, UbiONGRecordBuilder> {
  _$UbiONGRecord _$v;

  DocumentReference<Object> _ubi;
  DocumentReference<Object> get ubi => _$this._ubi;
  set ubi(DocumentReference<Object> ubi) => _$this._ubi = ubi;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  UbiONGRecordBuilder() {
    UbiONGRecord._initializeBuilder(this);
  }

  UbiONGRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _ubi = $v.ubi;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UbiONGRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UbiONGRecord;
  }

  @override
  void update(void Function(UbiONGRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$UbiONGRecord build() {
    final _$result =
        _$v ?? new _$UbiONGRecord._(ubi: ubi, reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
