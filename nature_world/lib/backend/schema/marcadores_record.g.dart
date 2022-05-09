// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'marcadores_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<MarcadoresRecord> _$marcadoresRecordSerializer =
    new _$MarcadoresRecordSerializer();

class _$MarcadoresRecordSerializer
    implements StructuredSerializer<MarcadoresRecord> {
  @override
  final Iterable<Type> types = const [MarcadoresRecord, _$MarcadoresRecord];
  @override
  final String wireName = 'MarcadoresRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, MarcadoresRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.ubicacion;
    if (value != null) {
      result
        ..add('ubicacion')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(LatLng)));
    }
    value = object.ong;
    if (value != null) {
      result
        ..add('ong')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
    }
    value = object.nombre;
    if (value != null) {
      result
        ..add('nombre')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.categoria;
    if (value != null) {
      result
        ..add('categoria')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.subcat;
    if (value != null) {
      result
        ..add('subcat')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.alca;
    if (value != null) {
      result
        ..add('alca')
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
  MarcadoresRecord deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new MarcadoresRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'ubicacion':
          result.ubicacion = serializers.deserialize(value,
              specifiedType: const FullType(LatLng)) as LatLng;
          break;
        case 'ong':
          result.ong = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
        case 'nombre':
          result.nombre = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'categoria':
          result.categoria = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'subcat':
          result.subcat = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'alca':
          result.alca = serializers.deserialize(value,
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

class _$MarcadoresRecord extends MarcadoresRecord {
  @override
  final LatLng ubicacion;
  @override
  final DocumentReference<Object> ong;
  @override
  final String nombre;
  @override
  final String categoria;
  @override
  final String subcat;
  @override
  final String alca;
  @override
  final DocumentReference<Object> reference;

  factory _$MarcadoresRecord(
          [void Function(MarcadoresRecordBuilder) updates]) =>
      (new MarcadoresRecordBuilder()..update(updates)).build();

  _$MarcadoresRecord._(
      {this.ubicacion,
      this.ong,
      this.nombre,
      this.categoria,
      this.subcat,
      this.alca,
      this.reference})
      : super._();

  @override
  MarcadoresRecord rebuild(void Function(MarcadoresRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MarcadoresRecordBuilder toBuilder() =>
      new MarcadoresRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MarcadoresRecord &&
        ubicacion == other.ubicacion &&
        ong == other.ong &&
        nombre == other.nombre &&
        categoria == other.categoria &&
        subcat == other.subcat &&
        alca == other.alca &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, ubicacion.hashCode), ong.hashCode),
                        nombre.hashCode),
                    categoria.hashCode),
                subcat.hashCode),
            alca.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('MarcadoresRecord')
          ..add('ubicacion', ubicacion)
          ..add('ong', ong)
          ..add('nombre', nombre)
          ..add('categoria', categoria)
          ..add('subcat', subcat)
          ..add('alca', alca)
          ..add('reference', reference))
        .toString();
  }
}

class MarcadoresRecordBuilder
    implements Builder<MarcadoresRecord, MarcadoresRecordBuilder> {
  _$MarcadoresRecord _$v;

  LatLng _ubicacion;
  LatLng get ubicacion => _$this._ubicacion;
  set ubicacion(LatLng ubicacion) => _$this._ubicacion = ubicacion;

  DocumentReference<Object> _ong;
  DocumentReference<Object> get ong => _$this._ong;
  set ong(DocumentReference<Object> ong) => _$this._ong = ong;

  String _nombre;
  String get nombre => _$this._nombre;
  set nombre(String nombre) => _$this._nombre = nombre;

  String _categoria;
  String get categoria => _$this._categoria;
  set categoria(String categoria) => _$this._categoria = categoria;

  String _subcat;
  String get subcat => _$this._subcat;
  set subcat(String subcat) => _$this._subcat = subcat;

  String _alca;
  String get alca => _$this._alca;
  set alca(String alca) => _$this._alca = alca;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  MarcadoresRecordBuilder() {
    MarcadoresRecord._initializeBuilder(this);
  }

  MarcadoresRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _ubicacion = $v.ubicacion;
      _ong = $v.ong;
      _nombre = $v.nombre;
      _categoria = $v.categoria;
      _subcat = $v.subcat;
      _alca = $v.alca;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MarcadoresRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MarcadoresRecord;
  }

  @override
  void update(void Function(MarcadoresRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$MarcadoresRecord build() {
    final _$result = _$v ??
        new _$MarcadoresRecord._(
            ubicacion: ubicacion,
            ong: ong,
            nombre: nombre,
            categoria: categoria,
            subcat: subcat,
            alca: alca,
            reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
