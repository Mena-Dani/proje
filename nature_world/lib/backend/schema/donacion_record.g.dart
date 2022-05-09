// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'donacion_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<DonacionRecord> _$donacionRecordSerializer =
    new _$DonacionRecordSerializer();

class _$DonacionRecordSerializer
    implements StructuredSerializer<DonacionRecord> {
  @override
  final Iterable<Type> types = const [DonacionRecord, _$DonacionRecord];
  @override
  final String wireName = 'DonacionRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, DonacionRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.ong;
    if (value != null) {
      result
        ..add('ONG')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
    }
    value = object.dineroD;
    if (value != null) {
      result
        ..add('dineroD')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.id;
    if (value != null) {
      result
        ..add('id')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.creadoPor;
    if (value != null) {
      result
        ..add('creado_Por')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
    }
    value = object.fechaCreacion;
    if (value != null) {
      result
        ..add('fecha_Creacion')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
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
  DonacionRecord deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new DonacionRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'ONG':
          result.ong = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
        case 'dineroD':
          result.dineroD = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'creado_Por':
          result.creadoPor = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
        case 'fecha_Creacion':
          result.fechaCreacion = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
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

class _$DonacionRecord extends DonacionRecord {
  @override
  final DocumentReference<Object> ong;
  @override
  final double dineroD;
  @override
  final String id;
  @override
  final DocumentReference<Object> creadoPor;
  @override
  final DateTime fechaCreacion;
  @override
  final DocumentReference<Object> reference;

  factory _$DonacionRecord([void Function(DonacionRecordBuilder) updates]) =>
      (new DonacionRecordBuilder()..update(updates)).build();

  _$DonacionRecord._(
      {this.ong,
      this.dineroD,
      this.id,
      this.creadoPor,
      this.fechaCreacion,
      this.reference})
      : super._();

  @override
  DonacionRecord rebuild(void Function(DonacionRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DonacionRecordBuilder toBuilder() =>
      new DonacionRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DonacionRecord &&
        ong == other.ong &&
        dineroD == other.dineroD &&
        id == other.id &&
        creadoPor == other.creadoPor &&
        fechaCreacion == other.fechaCreacion &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc($jc(0, ong.hashCode), dineroD.hashCode), id.hashCode),
                creadoPor.hashCode),
            fechaCreacion.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('DonacionRecord')
          ..add('ong', ong)
          ..add('dineroD', dineroD)
          ..add('id', id)
          ..add('creadoPor', creadoPor)
          ..add('fechaCreacion', fechaCreacion)
          ..add('reference', reference))
        .toString();
  }
}

class DonacionRecordBuilder
    implements Builder<DonacionRecord, DonacionRecordBuilder> {
  _$DonacionRecord _$v;

  DocumentReference<Object> _ong;
  DocumentReference<Object> get ong => _$this._ong;
  set ong(DocumentReference<Object> ong) => _$this._ong = ong;

  double _dineroD;
  double get dineroD => _$this._dineroD;
  set dineroD(double dineroD) => _$this._dineroD = dineroD;

  String _id;
  String get id => _$this._id;
  set id(String id) => _$this._id = id;

  DocumentReference<Object> _creadoPor;
  DocumentReference<Object> get creadoPor => _$this._creadoPor;
  set creadoPor(DocumentReference<Object> creadoPor) =>
      _$this._creadoPor = creadoPor;

  DateTime _fechaCreacion;
  DateTime get fechaCreacion => _$this._fechaCreacion;
  set fechaCreacion(DateTime fechaCreacion) =>
      _$this._fechaCreacion = fechaCreacion;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  DonacionRecordBuilder() {
    DonacionRecord._initializeBuilder(this);
  }

  DonacionRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _ong = $v.ong;
      _dineroD = $v.dineroD;
      _id = $v.id;
      _creadoPor = $v.creadoPor;
      _fechaCreacion = $v.fechaCreacion;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DonacionRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DonacionRecord;
  }

  @override
  void update(void Function(DonacionRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$DonacionRecord build() {
    final _$result = _$v ??
        new _$DonacionRecord._(
            ong: ong,
            dineroD: dineroD,
            id: id,
            creadoPor: creadoPor,
            fechaCreacion: fechaCreacion,
            reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
