
import 'package:appwrite/appwrite.dart';

class AppwriteService {
  static final AppwriteService _instance = AppwriteService._internal();

  late Client client;
  late Databases database;

  factory AppwriteService() {
    return _instance;
  }

  AppwriteService._internal() {
    client = Client()
      ..setEndpoint('https://cloud.appwrite.io/v1')
      ..setProject('6753afa400156a87898f');

    database = Databases(client);
  }
}

final appwriteService = AppwriteService();