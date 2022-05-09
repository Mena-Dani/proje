import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'orden_record.g.dart';

abstract class OrdenRecord implements Built<OrdenRecord, OrdenRecordBuilder> {
  static Serializer<OrdenRecord> get serializer => _$ordenRecordSerializer;

  @nullable
  BuiltList<DocumentReference> get donacion;

  @nullable
  DocumentReference get donador;

  @nullable
  double get total;

  @nullable
  DateTime get fecha;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(OrdenRecordBuilder builder) => builder
    ..donacion = ListBuilder()
    ..total = 0.0;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('orden');

  static Stream<OrdenRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<OrdenRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  OrdenRecord._();
  factory OrdenRecord([void Function(OrdenRecordBuilder) updates]) =
      _$OrdenRecord;

  static OrdenRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createOrdenRecordData({
  DocumentReference donador,
  double total,
  DateTime fecha,
}) =>
    serializers.toFirestore(
        OrdenRecord.serializer,
        OrdenRecord((o) => o
          ..donacion = null
          ..donador = donador
          ..total = total
          ..fecha = fecha));
