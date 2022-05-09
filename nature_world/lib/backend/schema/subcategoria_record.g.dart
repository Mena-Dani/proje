// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'subcategoria_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<SubcategoriaRecord> _$subcategoriaRecordSerializer =
    new _$SubcategoriaRecordSerializer();

class _$SubcategoriaRecordSerializer
    implements StructuredSerializer<SubcategoriaRecord> {
  @override
  final Iterable<Type> types = const [SubcategoriaRecord, _$SubcategoriaRecord];
  @override
  final String wireName = 'SubcategoriaRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, SubcategoriaRecord object,
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
    value = object.categoria;
    if (value != null) {
      result
        ..add('Categoria')
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
  SubcategoriaRecord deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new SubcategoriaRecordBuilder();

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
        case 'Categoria':
          result.categoria = serializers.deserialize(value,
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

class _$SubcategoriaRecord extends SubcategoriaRecord {
  @override
  final String nombre;
  @override
  final DocumentReference<Object> categoria;
  @override
  final DocumentReference<Object> reference;

  factory _$SubcategoriaRecord(
          [void Function(SubcategoriaRecordBuilder) updates]) =>
      (new SubcategoriaRecordBuilder()..update(updates)).build();

  _$SubcategoriaRecord._({this.nombre, this.categoria, this.reference})
      : super._();

  @override
  SubcategoriaRecord rebuild(
          void Function(SubcategoriaRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SubcategoriaRecordBuilder toBuilder() =>
      new SubcategoriaRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SubcategoriaRecord &&
        nombre == other.nombre &&
        categoria == other.categoria &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc(0, nombre.hashCode), categoria.hashCode), reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('SubcategoriaRecord')
          ..add('nombre', nombre)
          ..add('categoria', categoria)
          ..add('reference', reference))
        .toString();
  }
}

class SubcategoriaRecordBuilder
    implements Builder<SubcategoriaRecord, SubcategoriaRecordBuilder> {
  _$SubcategoriaRecord _$v;

  String _nombre;
  String get nombre => _$this._nombre;
  set nombre(String nombre) => _$this._nombre = nombre;

  DocumentReference<Object> _categoria;
  DocumentReference<Object> get categoria => _$this._categoria;
  set categoria(DocumentReference<Object> categoria) =>
      _$this._categoria = categoria;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  SubcategoriaRecordBuilder() {
    SubcategoriaRecord._initializeBuilder(this);
  }

  SubcategoriaRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _nombre = $v.nombre;
      _categoria = $v.categoria;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SubcategoriaRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SubcategoriaRecord;
  }

  @override
  void update(void Function(SubcategoriaRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$SubcategoriaRecord build() {
    final _$result = _$v ??
        new _$SubcategoriaRecord._(
            nombre: nombre, categoria: categoria, reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
