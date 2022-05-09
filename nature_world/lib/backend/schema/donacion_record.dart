import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'donacion_record.g.dart';

abstract class DonacionRecord
    implements Built<DonacionRecord, DonacionRecordBuilder> {
  static Serializer<DonacionRecord> get serializer =>
      _$donacionRecordSerializer;

  @nullable
  @BuiltValueField(wireName: 'ONG')
  DocumentReference get ong;

  @nullable
  double get dineroD;

  @nullable
  String get id;

  @nullable
  @BuiltValueField(wireName: 'creado_Por')
  DocumentReference get creadoPor;

  @nullable
  @BuiltValueField(wireName: 'fecha_Creacion')
  DateTime get fechaCreacion;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(DonacionRecordBuilder builder) => builder
    ..dineroD = 0.0
    ..id = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('donacion');

  static Stream<DonacionRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<DonacionRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  DonacionRecord._();
  factory DonacionRecord([void Function(DonacionRecordBuilder) updates]) =
      _$DonacionRecord;

  static DonacionRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createDonacionRecordData({
  DocumentReference ong,
  double dineroD,
  String id,
  DocumentReference creadoPor,
  DateTime fechaCreacion,
}) =>
    serializers.toFirestore(
        DonacionRecord.serializer,
        DonacionRecord((d) => d
          ..ong = ong
          ..dineroD = dineroD
          ..id = id
          ..creadoPor = creadoPor
          ..fechaCreacion = fechaCreacion));
