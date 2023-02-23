import 'package:supabase_flutter/supabase_flutter.dart' hide Provider;

export 'database/database.dart';
export 'storage/storage.dart';

const _kSupabaseUrl = 'https://usrtbrpwgfmsyrnrlxnp.supabase.co';
const _kSupabaseAnonKey =
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InVzcnRicnB3Z2Ztc3lybnJseG5wIiwicm9sZSI6ImFub24iLCJpYXQiOjE2Njg2ODY4ODUsImV4cCI6MTk4NDI2Mjg4NX0.XmAZ6c7evrD_ryC5bPuwcey3eiGc8h08g_FzCEZ_c3A';

class SupaFlow {
  SupaFlow._();

  static SupaFlow? _instance;
  static SupaFlow get instance => _instance ??= SupaFlow._();

  final _supabase = Supabase.instance.client;
  static SupabaseClient get client => instance._supabase;

  static Future initialize() => Supabase.initialize(
        url: _kSupabaseUrl,
        anonKey: _kSupabaseAnonKey,
      );
}
