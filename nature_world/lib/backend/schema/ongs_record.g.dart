// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ongs_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<OngsRecord> _$ongsRecordSerializer = new _$OngsRecordSerializer();

class _$OngsRecordSerializer implements StructuredSerializer<OngsRecord> {
  @override
  final Iterable<Type> types = const [OngsRecord, _$OngsRecord];
  @override
  final String wireName = 'OngsRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, OngsRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.email;
    if (value != null) {
      result
        ..add('email')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.nombre;
    if (value != null) {
      result
        ..add('nombre')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.oid;
    if (value != null) {
      result
        ..add('oid')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.createdTime;
    if (value != null) {
      result
        ..add('created_time')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.phoneNumber;
    if (value != null) {
      result
        ..add('phone_number')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.displayName;
    if (value != null) {
      result
        ..add('display_name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.uid;
    if (value != null) {
      result
        ..add('uid')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.descripcion;
    if (value != null) {
      result
        ..add('descripcion')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.mision;
    if (value != null) {
      result
        ..add('mision')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.vision;
    if (value != null) {
      result
        ..add('vision')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.sello;
    if (value != null) {
      result
        ..add('sello')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.fechaFundacion;
    if (value != null) {
      result
        ..add('fechaFundacion')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.voluntariado;
    if (value != null) {
      result
        ..add('voluntariado')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.cif;
    if (value != null) {
      result
        ..add('cif')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.imagenFondo;
    if (value != null) {
      result
        ..add('imagenFondo')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.localicacion;
    if (value != null) {
      result
        ..add('localicacion')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(LatLng)));
    }
    value = object.detallesXtras;
    if (value != null) {
      result
        ..add('detallesXtras')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.categoria;
    if (value != null) {
      result
        ..add('categoria')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
    }
    value = object.alcance;
    if (value != null) {
      result
        ..add('alcance')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
    }
    value = object.subcategoria;
    if (value != null) {
      result
        ..add('subcategoria')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
    }
    value = object.tipo;
    if (value != null) {
      result
        ..add('tipo')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
    }
    value = object.photoUrl;
    if (value != null) {
      result
        ..add('photo_url')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.valoracion;
    if (value != null) {
      result
        ..add('valoracion')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.favoritos;
    if (value != null) {
      result
        ..add('favoritos')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType(DocumentReference, const [const FullType(Object)])
            ])));
    }
    value = object.web;
    if (value != null) {
      result
        ..add('web')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.cat;
    if (value != null) {
      result
        ..add('cat')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.alc;
    if (value != null) {
      result
        ..add('alc')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.sub;
    if (value != null) {
      result
        ..add('sub')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.tip;
    if (value != null) {
      result
        ..add('tip')
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
  OngsRecord deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new OngsRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'nombre':
          result.nombre = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'oid':
          result.oid = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'created_time':
          result.createdTime = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'phone_number':
          result.phoneNumber = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'display_name':
          result.displayName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'uid':
          result.uid = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'descripcion':
          result.descripcion = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'mision':
          result.mision = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'vision':
          result.vision = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'sello':
          result.sello = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'fechaFundacion':
          result.fechaFundacion = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'voluntariado':
          result.voluntariado = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'cif':
          result.cif = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'imagenFondo':
          result.imagenFondo = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'localicacion':
          result.localicacion = serializers.deserialize(value,
              specifiedType: const FullType(LatLng)) as LatLng;
          break;
        case 'detallesXtras':
          result.detallesXtras = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'categoria':
          result.categoria = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
        case 'alcance':
          result.alcance = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
        case 'subcategoria':
          result.subcategoria = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
        case 'tipo':
          result.tipo = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
        case 'photo_url':
          result.photoUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'valoracion':
          result.valoracion = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'favoritos':
          result.favoritos.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    DocumentReference, const [const FullType(Object)])
              ])) as BuiltList<Object>);
          break;
        case 'web':
          result.web = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'cat':
          result.cat = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'alc':
          result.alc = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'sub':
          result.sub = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'tip':
          result.tip = serializers.deserialize(value,
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

class _$OngsRecord extends OngsRecord {
  @override
  final String email;
  @override
  final String nombre;
  @override
  final String oid;
  @override
  final DateTime createdTime;
  @override
  final String phoneNumber;
  @override
  final String displayName;
  @override
  final String uid;
  @override
  final String descripcion;
  @override
  final String mision;
  @override
  final String vision;
  @override
  final bool sello;
  @override
  final DateTime fechaFundacion;
  @override
  final bool voluntariado;
  @override
  final String cif;
  @override
  final String imagenFondo;
  @override
  final LatLng localicacion;
  @override
  final String detallesXtras;
  @override
  final DocumentReference<Object> categoria;
  @override
  final DocumentReference<Object> alcance;
  @override
  final DocumentReference<Object> subcategoria;
  @override
  final DocumentReference<Object> tipo;
  @override
  final String photoUrl;
  @override
  final double valoracion;
  @override
  final BuiltList<DocumentReference<Object>> favoritos;
  @override
  final String web;
  @override
  final String cat;
  @override
  final String alc;
  @override
  final String sub;
  @override
  final String tip;
  @override
  final DocumentReference<Object> reference;

  factory _$OngsRecord([void Function(OngsRecordBuilder) updates]) =>
      (new OngsRecordBuilder()..update(updates)).build();

  _$OngsRecord._(
      {this.email,
      this.nombre,
      this.oid,
      this.createdTime,
      this.phoneNumber,
      this.displayName,
      this.uid,
      this.descripcion,
      this.mision,
      this.vision,
      this.sello,
      this.fechaFundacion,
      this.voluntariado,
      this.cif,
      this.imagenFondo,
      this.localicacion,
      this.detallesXtras,
      this.categoria,
      this.alcance,
      this.subcategoria,
      this.tipo,
      this.photoUrl,
      this.valoracion,
      this.favoritos,
      this.web,
      this.cat,
      this.alc,
      this.sub,
      this.tip,
      this.reference})
      : super._();

  @override
  OngsRecord rebuild(void Function(OngsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OngsRecordBuilder toBuilder() => new OngsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OngsRecord &&
        email == other.email &&
        nombre == other.nombre &&
        oid == other.oid &&
        createdTime == other.createdTime &&
        phoneNumber == other.phoneNumber &&
        displayName == other.displayName &&
        uid == other.uid &&
        descripcion == other.descripcion &&
        mision == other.mision &&
        vision == other.vision &&
        sello == other.sello &&
        fechaFundacion == other.fechaFundacion &&
        voluntariado == other.voluntariado &&
        cif == other.cif &&
        imagenFondo == other.imagenFondo &&
        localicacion == other.localicacion &&
        detallesXtras == other.detallesXtras &&
        categoria == other.categoria &&
        alcance == other.alcance &&
        subcategoria == other.subcategoria &&
        tipo == other.tipo &&
        photoUrl == other.photoUrl &&
        valoracion == other.valoracion &&
        favoritos == other.favoritos &&
        web == other.web &&
        cat == other.cat &&
        alc == other.alc &&
        sub == other.sub &&
        tip == other.tip &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc(
                                            $jc(
                                                $jc(
                                                    $jc(
                                                        $jc(
                                                            $jc(
                                                                $jc(
                                                                    $jc(
                                                                        $jc(
                                                                            $jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc(0, email.hashCode), nombre.hashCode), oid.hashCode), createdTime.hashCode), phoneNumber.hashCode), displayName.hashCode), uid.hashCode), descripcion.hashCode), mision.hashCode), vision.hashCode), sello.hashCode),
                                                                                fechaFundacion.hashCode),
                                                                            voluntariado.hashCode),
                                                                        cif.hashCode),
                                                                    imagenFondo.hashCode),
                                                                localicacion.hashCode),
                                                            detallesXtras.hashCode),
                                                        categoria.hashCode),
                                                    alcance.hashCode),
                                                subcategoria.hashCode),
                                            tipo.hashCode),
                                        photoUrl.hashCode),
                                    valoracion.hashCode),
                                favoritos.hashCode),
                            web.hashCode),
                        cat.hashCode),
                    alc.hashCode),
                sub.hashCode),
            tip.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('OngsRecord')
          ..add('email', email)
          ..add('nombre', nombre)
          ..add('oid', oid)
          ..add('createdTime', createdTime)
          ..add('phoneNumber', phoneNumber)
          ..add('displayName', displayName)
          ..add('uid', uid)
          ..add('descripcion', descripcion)
          ..add('mision', mision)
          ..add('vision', vision)
          ..add('sello', sello)
          ..add('fechaFundacion', fechaFundacion)
          ..add('voluntariado', voluntariado)
          ..add('cif', cif)
          ..add('imagenFondo', imagenFondo)
          ..add('localicacion', localicacion)
          ..add('detallesXtras', detallesXtras)
          ..add('categoria', categoria)
          ..add('alcance', alcance)
          ..add('subcategoria', subcategoria)
          ..add('tipo', tipo)
          ..add('photoUrl', photoUrl)
          ..add('valoracion', valoracion)
          ..add('favoritos', favoritos)
          ..add('web', web)
          ..add('cat', cat)
          ..add('alc', alc)
          ..add('sub', sub)
          ..add('tip', tip)
          ..add('reference', reference))
        .toString();
  }
}

class OngsRecordBuilder implements Builder<OngsRecord, OngsRecordBuilder> {
  _$OngsRecord _$v;

  String _email;
  String get email => _$this._email;
  set email(String email) => _$this._email = email;

  String _nombre;
  String get nombre => _$this._nombre;
  set nombre(String nombre) => _$this._nombre = nombre;

  String _oid;
  String get oid => _$this._oid;
  set oid(String oid) => _$this._oid = oid;

  DateTime _createdTime;
  DateTime get createdTime => _$this._createdTime;
  set createdTime(DateTime createdTime) => _$this._createdTime = createdTime;

  String _phoneNumber;
  String get phoneNumber => _$this._phoneNumber;
  set phoneNumber(String phoneNumber) => _$this._phoneNumber = phoneNumber;

  String _displayName;
  String get displayName => _$this._displayName;
  set displayName(String displayName) => _$this._displayName = displayName;

  String _uid;
  String get uid => _$this._uid;
  set uid(String uid) => _$this._uid = uid;

  String _descripcion;
  String get descripcion => _$this._descripcion;
  set descripcion(String descripcion) => _$this._descripcion = descripcion;

  String _mision;
  String get mision => _$this._mision;
  set mision(String mision) => _$this._mision = mision;

  String _vision;
  String get vision => _$this._vision;
  set vision(String vision) => _$this._vision = vision;

  bool _sello;
  bool get sello => _$this._sello;
  set sello(bool sello) => _$this._sello = sello;

  DateTime _fechaFundacion;
  DateTime get fechaFundacion => _$this._fechaFundacion;
  set fechaFundacion(DateTime fechaFundacion) =>
      _$this._fechaFundacion = fechaFundacion;

  bool _voluntariado;
  bool get voluntariado => _$this._voluntariado;
  set voluntariado(bool voluntariado) => _$this._voluntariado = voluntariado;

  String _cif;
  String get cif => _$this._cif;
  set cif(String cif) => _$this._cif = cif;

  String _imagenFondo;
  String get imagenFondo => _$this._imagenFondo;
  set imagenFondo(String imagenFondo) => _$this._imagenFondo = imagenFondo;

  LatLng _localicacion;
  LatLng get localicacion => _$this._localicacion;
  set localicacion(LatLng localicacion) => _$this._localicacion = localicacion;

  String _detallesXtras;
  String get detallesXtras => _$this._detallesXtras;
  set detallesXtras(String detallesXtras) =>
      _$this._detallesXtras = detallesXtras;

  DocumentReference<Object> _categoria;
  DocumentReference<Object> get categoria => _$this._categoria;
  set categoria(DocumentReference<Object> categoria) =>
      _$this._categoria = categoria;

  DocumentReference<Object> _alcance;
  DocumentReference<Object> get alcance => _$this._alcance;
  set alcance(DocumentReference<Object> alcance) => _$this._alcance = alcance;

  DocumentReference<Object> _subcategoria;
  DocumentReference<Object> get subcategoria => _$this._subcategoria;
  set subcategoria(DocumentReference<Object> subcategoria) =>
      _$this._subcategoria = subcategoria;

  DocumentReference<Object> _tipo;
  DocumentReference<Object> get tipo => _$this._tipo;
  set tipo(DocumentReference<Object> tipo) => _$this._tipo = tipo;

  String _photoUrl;
  String get photoUrl => _$this._photoUrl;
  set photoUrl(String photoUrl) => _$this._photoUrl = photoUrl;

  double _valoracion;
  double get valoracion => _$this._valoracion;
  set valoracion(double valoracion) => _$this._valoracion = valoracion;

  ListBuilder<DocumentReference<Object>> _favoritos;
  ListBuilder<DocumentReference<Object>> get favoritos =>
      _$this._favoritos ??= new ListBuilder<DocumentReference<Object>>();
  set favoritos(ListBuilder<DocumentReference<Object>> favoritos) =>
      _$this._favoritos = favoritos;

  String _web;
  String get web => _$this._web;
  set web(String web) => _$this._web = web;

  String _cat;
  String get cat => _$this._cat;
  set cat(String cat) => _$this._cat = cat;

  String _alc;
  String get alc => _$this._alc;
  set alc(String alc) => _$this._alc = alc;

  String _sub;
  String get sub => _$this._sub;
  set sub(String sub) => _$this._sub = sub;

  String _tip;
  String get tip => _$this._tip;
  set tip(String tip) => _$this._tip = tip;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  OngsRecordBuilder() {
    OngsRecord._initializeBuilder(this);
  }

  OngsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _email = $v.email;
      _nombre = $v.nombre;
      _oid = $v.oid;
      _createdTime = $v.createdTime;
      _phoneNumber = $v.phoneNumber;
      _displayName = $v.displayName;
      _uid = $v.uid;
      _descripcion = $v.descripcion;
      _mision = $v.mision;
      _vision = $v.vision;
      _sello = $v.sello;
      _fechaFundacion = $v.fechaFundacion;
      _voluntariado = $v.voluntariado;
      _cif = $v.cif;
      _imagenFondo = $v.imagenFondo;
      _localicacion = $v.localicacion;
      _detallesXtras = $v.detallesXtras;
      _categoria = $v.categoria;
      _alcance = $v.alcance;
      _subcategoria = $v.subcategoria;
      _tipo = $v.tipo;
      _photoUrl = $v.photoUrl;
      _valoracion = $v.valoracion;
      _favoritos = $v.favoritos?.toBuilder();
      _web = $v.web;
      _cat = $v.cat;
      _alc = $v.alc;
      _sub = $v.sub;
      _tip = $v.tip;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OngsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$OngsRecord;
  }

  @override
  void update(void Function(OngsRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$OngsRecord build() {
    _$OngsRecord _$result;
    try {
      _$result = _$v ??
          new _$OngsRecord._(
              email: email,
              nombre: nombre,
              oid: oid,
              createdTime: createdTime,
              phoneNumber: phoneNumber,
              displayName: displayName,
              uid: uid,
              descripcion: descripcion,
              mision: mision,
              vision: vision,
              sello: sello,
              fechaFundacion: fechaFundacion,
              voluntariado: voluntariado,
              cif: cif,
              imagenFondo: imagenFondo,
              localicacion: localicacion,
              detallesXtras: detallesXtras,
              categoria: categoria,
              alcance: alcance,
              subcategoria: subcategoria,
              tipo: tipo,
              photoUrl: photoUrl,
              valoracion: valoracion,
              favoritos: _favoritos?.build(),
              web: web,
              cat: cat,
              alc: alc,
              sub: sub,
              tip: tip,
              reference: reference);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'favoritos';
        _favoritos?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'OngsRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
