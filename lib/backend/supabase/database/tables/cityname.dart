import '../database.dart';

class CitynameTable extends SupabaseTable<CitynameRow> {
  @override
  String get tableName => 'cityname';

  @override
  CitynameRow createRow(Map<String, dynamic> data) => CitynameRow(data);
}

class CitynameRow extends SupabaseDataRow {
  CitynameRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => CitynameTable();

  String? get cities => getField<String>('Cities');
  set cities(String? value) => setField<String>('Cities', value);

  int get uid => getField<int>('uid')!;
  set uid(int value) => setField<int>('uid', value);
}
