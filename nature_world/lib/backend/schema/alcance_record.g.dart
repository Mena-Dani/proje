// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'alcance_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<AlcanceRecord> _$alcanceRecordSerializer =
    new _$AlcanceRecordSerializer();

class _$AlcanceRecordSerializer implements StructuredSerializer<AlcanceRecord> {
  @override
  final Iterable<Type> types = const [AlcanceRecord, _$AlcanceRecord];
  @override
  final String wireName = 'AlcanceRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, AlcanceRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.nombre;
    if (value != null) {
      result
        ..add('nombre')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
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
  AlcanceRecord deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AlcanceRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'nombre':
          result.nombre = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
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

class _$AlcanceRecord extends AlcanceRecord {
  @override
  final String nombre;
  @override
  final DocumentReference<Object> reference;

  factory _$AlcanceRecord([void Function(AlcanceRecordBuilder) updates]) =>
      (new AlcanceRecordBuilder()..update(updates)).build();

  _$AlcanceRecord._({this.nombre, this.reference}) : super._();

  @override
  AlcanceRecord rebuild(void Function(AlcanceRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AlcanceRecordBuilder toBuilder() => new AlcanceRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AlcanceRecord &&
        nombre == other.nombre &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, nombre.hashCode), reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('AlcanceRecord')
          ..add('nombre', nombre)
          ..add('reference', reference))
        .toString();
  }
}

class AlcanceRecordBuilder
    implements Builder<AlcanceRecord, AlcanceRecordBuilder> {
  _$AlcanceRecord _$v;

  String _nombre;
  String get nombre => _$this._nombre;
  set nombre(String nombre) => _$this._nombre = nombre;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  AlcanceRecordBuilder() {
    AlcanceRecord._initializeBuilder(this);
  }

  AlcanceRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _nombre = $v.nombre;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AlcanceRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AlcanceRecord;
  }

  @override
  void update(void Function(AlcanceRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$AlcanceRecord build() {
    final _$result =
        _$v ?? new _$AlcanceRecord._(nombre: nombre, reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
