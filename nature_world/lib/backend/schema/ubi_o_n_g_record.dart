import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'ubi_o_n_g_record.g.dart';

abstract class UbiONGRecord
    implements Built<UbiONGRecord, UbiONGRecordBuilder> {
  static Serializer<UbiONGRecord> get serializer => _$ubiONGRecordSerializer;

  @nullable
  DocumentReference get ubi;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(UbiONGRecordBuilder builder) => builder;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('ubi_ONG');

  static Stream<UbiONGRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<UbiONGRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  UbiONGRecord._();
  factory UbiONGRecord([void Function(UbiONGRecordBuilder) updates]) =
      _$UbiONGRecord;

  static UbiONGRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createUbiONGRecordData({
  DocumentReference ubi,
}) =>
    serializers.toFirestore(
        UbiONGRecord.serializer, UbiONGRecord((u) => u..ubi = ubi));
