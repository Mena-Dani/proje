import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'tipo_record.g.dart';

abstract class TipoRecord implements Built<TipoRecord, TipoRecordBuilder> {
  static Serializer<TipoRecord> get serializer => _$tipoRecordSerializer;

  @nullable
  String get nombre;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(TipoRecordBuilder builder) =>
      builder..nombre = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('tipo');

  static Stream<TipoRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<TipoRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  TipoRecord._();
  factory TipoRecord([void Function(TipoRecordBuilder) updates]) = _$TipoRecord;

  static TipoRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createTipoRecordData({
  String nombre,
}) =>
    serializers.toFirestore(
        TipoRecord.serializer, TipoRecord((t) => t..nombre = nombre));
