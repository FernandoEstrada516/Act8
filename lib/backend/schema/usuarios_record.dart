import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'usuarios_record.g.dart';

abstract class UsuariosRecord
    implements Built<UsuariosRecord, UsuariosRecordBuilder> {
  static Serializer<UsuariosRecord> get serializer =>
      _$usuariosRecordSerializer;

  @nullable
  String get nombre;

  @nullable
  String get email;

  @nullable
  String get con;

  @nullable
  String get apellidos;

  @nullable
  @BuiltValueField(wireName: 'num_tel')
  String get numTel;

  @nullable
  String get genero;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(UsuariosRecordBuilder builder) => builder
    ..nombre = ''
    ..email = ''
    ..con = ''
    ..apellidos = ''
    ..numTel = ''
    ..genero = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Usuarios');

  static Stream<UsuariosRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<UsuariosRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  UsuariosRecord._();
  factory UsuariosRecord([void Function(UsuariosRecordBuilder) updates]) =
      _$UsuariosRecord;

  static UsuariosRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createUsuariosRecordData({
  String nombre,
  String email,
  String con,
  String apellidos,
  String numTel,
  String genero,
}) =>
    serializers.toFirestore(
        UsuariosRecord.serializer,
        UsuariosRecord((u) => u
          ..nombre = nombre
          ..email = email
          ..con = con
          ..apellidos = apellidos
          ..numTel = numTel
          ..genero = genero));
