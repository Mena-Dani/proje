// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'orden_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<OrdenRecord> _$ordenRecordSerializer = new _$OrdenRecordSerializer();

class _$OrdenRecordSerializer implements StructuredSerializer<OrdenRecord> {
  @override
  final Iterable<Type> types = const [OrdenRecord, _$OrdenRecord];
  @override
  final String wireName = 'OrdenRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, OrdenRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.donacion;
    if (value != null) {
      result
        ..add('donacion')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType(DocumentReference, const [const FullType(Object)])
            ])));
    }
    value = object.donador;
    if (value != null) {
      result
        ..add('donador')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
    }
    value = object.total;
    if (value != null) {
      result
        ..add('total')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.fecha;
    if (value != null) {
      result
        ..add('fecha')
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
  OrdenRecord deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new OrdenRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'donacion':
          result.donacion.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    DocumentReference, const [const FullType(Object)])
              ])) as BuiltList<Object>);
          break;
        case 'donador':
          result.donador = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
        case 'total':
          result.total = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'fecha':
          result.fecha = serializers.deserialize(value,
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

class _$OrdenRecord extends OrdenRecord {
  @override
  final BuiltList<DocumentReference<Object>> donacion;
  @override
  final DocumentReference<Object> donador;
  @override
  final double total;
  @override
  final DateTime fecha;
  @override
  final DocumentReference<Object> reference;

  factory _$OrdenRecord([void Function(OrdenRecordBuilder) updates]) =>
      (new OrdenRecordBuilder()..update(updates)).build();

  _$OrdenRecord._(
      {this.donacion, this.donador, this.total, this.fecha, this.reference})
      : super._();

  @override
  OrdenRecord rebuild(void Function(OrdenRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OrdenRecordBuilder toBuilder() => new OrdenRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OrdenRecord &&
        donacion == other.donacion &&
        donador == other.donador &&
        total == other.total &&
        fecha == other.fecha &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, donacion.hashCode), donador.hashCode),
                total.hashCode),
            fecha.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('OrdenRecord')
          ..add('donacion', donacion)
          ..add('donador', donador)
          ..add('total', total)
          ..add('fecha', fecha)
          ..add('reference', reference))
        .toString();
  }
}

class OrdenRecordBuilder implements Builder<OrdenRecord, OrdenRecordBuilder> {
  _$OrdenRecord _$v;

  ListBuilder<DocumentReference<Object>> _donacion;
  ListBuilder<DocumentReference<Object>> get donacion =>
      _$this._donacion ??= new ListBuilder<DocumentReference<Object>>();
  set donacion(ListBuilder<DocumentReference<Object>> donacion) =>
      _$this._donacion = donacion;

  DocumentReference<Object> _donador;
  DocumentReference<Object> get donador => _$this._donador;
  set donador(DocumentReference<Object> donador) => _$this._donador = donador;

  double _total;
  double get total => _$this._total;
  set total(double total) => _$this._total = total;

  DateTime _fecha;
  DateTime get fecha => _$this._fecha;
  set fecha(DateTime fecha) => _$this._fecha = fecha;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  OrdenRecordBuilder() {
    OrdenRecord._initializeBuilder(this);
  }

  OrdenRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _donacion = $v.donacion?.toBuilder();
      _donador = $v.donador;
      _total = $v.total;
      _fecha = $v.fecha;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OrdenRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$OrdenRecord;
  }

  @override
  void update(void Function(OrdenRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$OrdenRecord build() {
    _$OrdenRecord _$result;
    try {
      _$result = _$v ??
          new _$OrdenRecord._(
              donacion: _donacion?.build(),
              donador: donador,
              total: total,
              fecha: fecha,
              reference: reference);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'donacion';
        _donacion?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'OrdenRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
