import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'alcance_record.g.dart';

abstract class AlcanceRecord
    implements Built<AlcanceRecord, AlcanceRecordBuilder> {
  static Serializer<AlcanceRecord> get serializer => _$alcanceRecordSerializer;

  @nullable
  String get nombre;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(AlcanceRecordBuilder builder) =>
      builder..nombre = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('alcance');

  static Stream<AlcanceRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<AlcanceRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  AlcanceRecord._();
  factory AlcanceRecord([void Function(AlcanceRecordBuilder) updates]) =
      _$AlcanceRecord;

  static AlcanceRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createAlcanceRecordData({
  String nombre,
}) =>
    serializers.toFirestore(
        AlcanceRecord.serializer, AlcanceRecord((a) => a..nombre = nombre));
