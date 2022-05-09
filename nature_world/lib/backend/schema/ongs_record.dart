import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'ongs_record.g.dart';

abstract class OngsRecord implements Built<OngsRecord, OngsRecordBuilder> {
  static Serializer<OngsRecord> get serializer => _$ongsRecordSerializer;

  @nullable
  String get email;

  @nullable
  String get nombre;

  @nullable
  String get oid;

  @nullable
  @BuiltValueField(wireName: 'created_time')
  DateTime get createdTime;

  @nullable
  @BuiltValueField(wireName: 'phone_number')
  String get phoneNumber;

  @nullable
  @BuiltValueField(wireName: 'display_name')
  String get displayName;

  @nullable
  String get uid;

  @nullable
  String get descripcion;

  @nullable
  String get mision;

  @nullable
  String get vision;

  @nullable
  bool get sello;

  @nullable
  DateTime get fechaFundacion;

  @nullable
  bool get voluntariado;

  @nullable
  String get cif;

  @nullable
  String get imagenFondo;

  @nullable
  LatLng get localicacion;

  @nullable
  String get detallesXtras;

  @nullable
  DocumentReference get categoria;

  @nullable
  DocumentReference get alcance;

  @nullable
  DocumentReference get subcategoria;

  @nullable
  DocumentReference get tipo;

  @nullable
  @BuiltValueField(wireName: 'photo_url')
  String get photoUrl;

  @nullable
  double get valoracion;

  @nullable
  BuiltList<DocumentReference> get favoritos;

  @nullable
  String get web;

  @nullable
  String get cat;

  @nullable
  String get alc;

  @nullable
  String get sub;

  @nullable
  String get tip;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(OngsRecordBuilder builder) => builder
    ..email = ''
    ..nombre = ''
    ..oid = ''
    ..phoneNumber = ''
    ..displayName = ''
    ..uid = ''
    ..descripcion = ''
    ..mision = ''
    ..vision = ''
    ..sello = false
    ..voluntariado = false
    ..cif = ''
    ..imagenFondo = ''
    ..detallesXtras = ''
    ..photoUrl = ''
    ..valoracion = 0.0
    ..favoritos = ListBuilder()
    ..web = ''
    ..cat = ''
    ..alc = ''
    ..sub = ''
    ..tip = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('ongs');

  static Stream<OngsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<OngsRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static OngsRecord fromAlgolia(AlgoliaObjectSnapshot snapshot) => OngsRecord(
        (c) => c
          ..email = snapshot.data['email']
          ..nombre = snapshot.data['nombre']
          ..oid = snapshot.data['oid']
          ..createdTime = safeGet(() => DateTime.fromMillisecondsSinceEpoch(
              snapshot.data['created_time']))
          ..phoneNumber = snapshot.data['phone_number']
          ..displayName = snapshot.data['display_name']
          ..uid = snapshot.data['uid']
          ..descripcion = snapshot.data['descripcion']
          ..mision = snapshot.data['mision']
          ..vision = snapshot.data['vision']
          ..sello = snapshot.data['sello']
          ..fechaFundacion = safeGet(() => DateTime.fromMillisecondsSinceEpoch(
              snapshot.data['fechaFundacion']))
          ..voluntariado = snapshot.data['voluntariado']
          ..cif = snapshot.data['cif']
          ..imagenFondo = snapshot.data['imagenFondo']
          ..localicacion = safeGet(() => LatLng(
                snapshot.data['_geoloc']['lat'],
                snapshot.data['_geoloc']['lng'],
              ))
          ..detallesXtras = snapshot.data['detallesXtras']
          ..categoria = safeGet(() => toRef(snapshot.data['categoria']))
          ..alcance = safeGet(() => toRef(snapshot.data['alcance']))
          ..subcategoria = safeGet(() => toRef(snapshot.data['subcategoria']))
          ..tipo = safeGet(() => toRef(snapshot.data['tipo']))
          ..photoUrl = snapshot.data['photo_url']
          ..valoracion = snapshot.data['valoracion']?.toDouble()
          ..favoritos = safeGet(() =>
              ListBuilder(snapshot.data['favoritos'].map((s) => toRef(s))))
          ..web = snapshot.data['web']
          ..cat = snapshot.data['cat']
          ..alc = snapshot.data['alc']
          ..sub = snapshot.data['sub']
          ..tip = snapshot.data['tip']
          ..reference = OngsRecord.collection.doc(snapshot.objectID),
      );

  static Future<List<OngsRecord>> search(
          {String term,
          FutureOr<LatLng> location,
          int maxResults,
          double searchRadiusMeters}) =>
      FFAlgoliaManager.instance
          .algoliaQuery(
            index: 'ongs',
            term: term,
            maxResults: maxResults,
            location: location,
            searchRadiusMeters: searchRadiusMeters,
          )
          .then((r) => r.map(fromAlgolia).toList());

  OngsRecord._();
  factory OngsRecord([void Function(OngsRecordBuilder) updates]) = _$OngsRecord;

  static OngsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createOngsRecordData({
  String email,
  String nombre,
  String oid,
  DateTime createdTime,
  String phoneNumber,
  String displayName,
  String uid,
  String descripcion,
  String mision,
  String vision,
  bool sello,
  DateTime fechaFundacion,
  bool voluntariado,
  String cif,
  String imagenFondo,
  LatLng localicacion,
  String detallesXtras,
  DocumentReference categoria,
  DocumentReference alcance,
  DocumentReference subcategoria,
  DocumentReference tipo,
  String photoUrl,
  double valoracion,
  String web,
  String cat,
  String alc,
  String sub,
  String tip,
}) =>
    serializers.toFirestore(
        OngsRecord.serializer,
        OngsRecord((o) => o
          ..email = email
          ..nombre = nombre
          ..oid = oid
          ..createdTime = createdTime
          ..phoneNumber = phoneNumber
          ..displayName = displayName
          ..uid = uid
          ..descripcion = descripcion
          ..mision = mision
          ..vision = vision
          ..sello = sello
          ..fechaFundacion = fechaFundacion
          ..voluntariado = voluntariado
          ..cif = cif
          ..imagenFondo = imagenFondo
          ..localicacion = localicacion
          ..detallesXtras = detallesXtras
          ..categoria = categoria
          ..alcance = alcance
          ..subcategoria = subcategoria
          ..tipo = tipo
          ..photoUrl = photoUrl
          ..valoracion = valoracion
          ..favoritos = null
          ..web = web
          ..cat = cat
          ..alc = alc
          ..sub = sub
          ..tip = tip));
