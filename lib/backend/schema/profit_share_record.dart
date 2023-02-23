import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'profit_share_record.g.dart';

abstract class ProfitShareRecord
    implements Built<ProfitShareRecord, ProfitShareRecordBuilder> {
  static Serializer<ProfitShareRecord> get serializer =>
      _$profitShareRecordSerializer;

  String? get name;

  double? get amount;

  String? get status;

  double? get tax;

  @BuiltValueField(wireName: 'created_at')
  DateTime? get createdAt;

  @BuiltValueField(wireName: 'vendor_name')
  String? get vendorName;

  @BuiltValueField(wireName: 'administered_by')
  DocumentReference? get administeredBy;

  @BuiltValueField(wireName: 'AdminRefCode')
  String? get adminRefCode;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(ProfitShareRecordBuilder builder) => builder
    ..name = ''
    ..amount = 0.0
    ..status = ''
    ..tax = 0.0
    ..vendorName = ''
    ..adminRefCode = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('ProfitShare');

  static Stream<ProfitShareRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<ProfitShareRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  ProfitShareRecord._();
  factory ProfitShareRecord([void Function(ProfitShareRecordBuilder) updates]) =
      _$ProfitShareRecord;

  static ProfitShareRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createProfitShareRecordData({
  String? name,
  double? amount,
  String? status,
  double? tax,
  DateTime? createdAt,
  String? vendorName,
  DocumentReference? administeredBy,
  String? adminRefCode,
}) {
  final firestoreData = serializers.toFirestore(
    ProfitShareRecord.serializer,
    ProfitShareRecord(
      (p) => p
        ..name = name
        ..amount = amount
        ..status = status
        ..tax = tax
        ..createdAt = createdAt
        ..vendorName = vendorName
        ..administeredBy = administeredBy
        ..adminRefCode = adminRefCode,
    ),
  );

  return firestoreData;
}
