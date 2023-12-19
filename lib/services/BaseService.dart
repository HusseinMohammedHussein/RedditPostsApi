import 'package:dio/dio.dart';

class BaseService {
  var dio = Dio();

  static const String BASE_URL = 'https://oauth.reddit.com/r/FlutterDev';
  static const String NEW = '/new';
  static const String HOT = '/hot';
  static const String RISING = '/rising';
  static const String Auth_Token = 'bearer eyJhbGciOiJSUzI1NiIsImtpZCI6IlNIQTI1NjpzS3dsMnlsV0VtMjVmcXhwTU40cWY4MXE2OWFFdWFyMnpLMUdhVGxjdWNZIiwidHlwIjoiSldUIn0.eyJzdWIiOiJ1c2VyIiwiZXhwIjoxNzAzMDM0OTk2LjUyNjA5NCwiaWF0IjoxNzAyOTQ4NTk2LjUyNjA5NCwianRpIjoiTlBEZ1JmMWZ5NHk4RThaQ2FOOUp0Q2tLbTliTlJRIiwiY2lkIjoiS0hySDgyNk9HaHBhN1psbFoxejJ4dyIsImxpZCI6InQyX2YwcGtlZGFoIiwiYWlkIjoidDJfZjBwa2VkYWgiLCJsY2EiOjE2MzMxMDE5ODMwMDAsInNjcCI6ImVKeUtWdEpTaWdVRUFBRF9fd056QVNjIiwiZmxvIjo5fQ.oPCG1mP1XpJjcgQzF7c74vczBjNVymwu87zCKRy0UKojZ8yuAVdSch_M_qCzWlcvzyDTZo_Sn8YXkuc1fPk8pszqVzC47v4k-nqTErzTbMtLsp5vC6zw6kaeygZPDgN6vEiNTUOWKors3_Y4_kQ4TfFiIGjj7vTttwpvB5fW4cgcT83i9tzXAxEravmHlczXkmbwb9IiTEhFBxBrBs_Wp-ct5TZFGYRbI0Z7ChtZDNlsg5gtsLDn4hLcBj6ej1SRGGjZlOftgHzh29wowo8RhJ9WR8dh1d4cMWC1GaSOdqvPf0PJRRxCr9j3nSKh691vH9fxTgi_SnGOy5c8f1saCw';
  static const String USER_AGENT = 'ChangeMeClient/0.1';
}