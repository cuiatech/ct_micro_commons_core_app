abstract class AppCheckoutDatasource {
  Future<Map<String, dynamic>> call(int appId, {int? quantity});
}
