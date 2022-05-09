import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'marcadores_record.g.dart';

abstract class MarcadoresRecord
    implements Built<MarcadoresRecord, MarcadoresRecordBuilder> {
  static Serializer<MarcadoresRecord> get serializer =>
      _$marcadoresRecordSerializer;

  @nullable
  LatLng get ubicacion;

  @nullable
  DocumentReference get ong;

  @nullable
  String get nombre;

  @nullable
  String get categoria;

  @nullable
  String get subcat;

  @nullable
  String get alca;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(MarcadoresRecordBuilder builder) => builder
    ..nombre = ''
    ..categoria = ''
    ..subcat = ''
    ..alca = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('marcadores');

  static Stream<MarcadoresRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<MarcadoresRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  MarcadoresRecord._();
  factory MarcadoresRecord([void Function(MarcadoresRecordBuilder) updates]) =
      _$MarcadoresRecord;

  static MarcadoresRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createMarcadoresRecordData({
  LatLng ubicacion,
  DocumentReference ong,
  String nombre,
  String categoria,
  String subcat,
  String alca,
}) =>
    serializers.toFirestore(
        MarcadoresRecord.serializer,
        MarcadoresRecord((m) => m
          ..ubicacion = ubicacion
          ..ong = ong
          ..nombre = nombre
          ..categoria = categoria
          ..subcat = subcat
          ..alca = alca));
