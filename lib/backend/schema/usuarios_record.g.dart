// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'usuarios_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<UsuariosRecord> _$usuariosRecordSerializer =
    new _$UsuariosRecordSerializer();

class _$UsuariosRecordSerializer
    implements StructuredSerializer<UsuariosRecord> {
  @override
  final Iterable<Type> types = const [UsuariosRecord, _$UsuariosRecord];
  @override
  final String wireName = 'UsuariosRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, UsuariosRecord object,
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
    value = object.email;
    if (value != null) {
      result
        ..add('email')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.con;
    if (value != null) {
      result
        ..add('con')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.apellidos;
    if (value != null) {
      result
        ..add('apellidos')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.numTel;
    if (value != null) {
      result
        ..add('num_tel')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.genero;
    if (value != null) {
      result
        ..add('genero')
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
  UsuariosRecord deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new UsuariosRecordBuilder();

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
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'con':
          result.con = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'apellidos':
          result.apellidos = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'num_tel':
          result.numTel = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'genero':
          result.genero = serializers.deserialize(value,
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

class _$UsuariosRecord extends UsuariosRecord {
  @override
  final String nombre;
  @override
  final String email;
  @override
  final String con;
  @override
  final String apellidos;
  @override
  final String numTel;
  @override
  final String genero;
  @override
  final DocumentReference<Object> reference;

  factory _$UsuariosRecord([void Function(UsuariosRecordBuilder) updates]) =>
      (new UsuariosRecordBuilder()..update(updates)).build();

  _$UsuariosRecord._(
      {this.nombre,
      this.email,
      this.con,
      this.apellidos,
      this.numTel,
      this.genero,
      this.reference})
      : super._();

  @override
  UsuariosRecord rebuild(void Function(UsuariosRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UsuariosRecordBuilder toBuilder() =>
      new UsuariosRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UsuariosRecord &&
        nombre == other.nombre &&
        email == other.email &&
        con == other.con &&
        apellidos == other.apellidos &&
        numTel == other.numTel &&
        genero == other.genero &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, nombre.hashCode), email.hashCode),
                        con.hashCode),
                    apellidos.hashCode),
                numTel.hashCode),
            genero.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('UsuariosRecord')
          ..add('nombre', nombre)
          ..add('email', email)
          ..add('con', con)
          ..add('apellidos', apellidos)
          ..add('numTel', numTel)
          ..add('genero', genero)
          ..add('reference', reference))
        .toString();
  }
}

class UsuariosRecordBuilder
    implements Builder<UsuariosRecord, UsuariosRecordBuilder> {
  _$UsuariosRecord _$v;

  String _nombre;
  String get nombre => _$this._nombre;
  set nombre(String nombre) => _$this._nombre = nombre;

  String _email;
  String get email => _$this._email;
  set email(String email) => _$this._email = email;

  String _con;
  String get con => _$this._con;
  set con(String con) => _$this._con = con;

  String _apellidos;
  String get apellidos => _$this._apellidos;
  set apellidos(String apellidos) => _$this._apellidos = apellidos;

  String _numTel;
  String get numTel => _$this._numTel;
  set numTel(String numTel) => _$this._numTel = numTel;

  String _genero;
  String get genero => _$this._genero;
  set genero(String genero) => _$this._genero = genero;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  UsuariosRecordBuilder() {
    UsuariosRecord._initializeBuilder(this);
  }

  UsuariosRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _nombre = $v.nombre;
      _email = $v.email;
      _con = $v.con;
      _apellidos = $v.apellidos;
      _numTel = $v.numTel;
      _genero = $v.genero;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UsuariosRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UsuariosRecord;
  }

  @override
  void update(void Function(UsuariosRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$UsuariosRecord build() {
    final _$result = _$v ??
        new _$UsuariosRecord._(
            nombre: nombre,
            email: email,
            con: con,
            apellidos: apellidos,
            numTel: numTel,
            genero: genero,
            reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
