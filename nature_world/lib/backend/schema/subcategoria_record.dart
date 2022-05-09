import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'subcategoria_record.g.dart';

abstract class SubcategoriaRecord
    implements Built<SubcategoriaRecord, SubcategoriaRecordBuilder> {
  static Serializer<SubcategoriaRecord> get serializer =>
      _$subcategoriaRecordSerializer;

  @nullable
  String get nombre;

  @nullable
  @BuiltValueField(wireName: 'Categoria')
  DocumentReference get categoria;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(SubcategoriaRecordBuilder builder) =>
      builder..nombre = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('subcategoria');

  static Stream<SubcategoriaRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<SubcategoriaRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s)));

  SubcategoriaRecord._();
  factory SubcategoriaRecord(
          [void Function(SubcategoriaRecordBuilder) updates]) =
      _$SubcategoriaRecord;

  static SubcategoriaRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createSubcategoriaRecordData({
  String nombre,
  DocumentReference categoria,
}) =>
    serializers.toFirestore(
        SubcategoriaRecord.serializer,
        SubcategoriaRecord((s) => s
          ..nombre = nombre
          ..categoria = categoria));
