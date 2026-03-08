import 'dart:async';
import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:openapi/openapi.dart';
import '../constants/credential.constant.dart';
import '../models/credential.model.dart';

class CredentialService {
  static final CredentialService _instance = CredentialService._internal();
  factory CredentialService() => _instance;
  CredentialService._internal();

  late SharedPreferences _prefs;
  final Map<String, String> _sessionStorage = {};

  final StreamController<LoggedUserModel?> _userInfoController = StreamController<LoggedUserModel?>.broadcast();
  Stream<LoggedUserModel?> get userLoggedInfo$ => _userInfoController.stream;

  Future<void> init() async {
    _prefs = await SharedPreferences.getInstance();
    _userInfoController.add(userLoggedInfo);
  }

  void _setItem(String key, String value, bool isRemember) {
    if (isRemember) {
      _prefs.setString(key, value);
      _sessionStorage.remove(key);
    } else {
      _sessionStorage[key] = value;
      _prefs.remove(key);
    }
  }

  String? _getItem(String key) {
    return _prefs.getString(key) ?? _sessionStorage[key];
  }

  void _removeItem(String key) {
    _prefs.remove(key);
    _sessionStorage.remove(key);
  }

  Map<String, String>? get credential {
    final accessToken = _getItem(CredentialKey.accessToken);
    final refreshToken = _getItem(CredentialKey.refreshToken);

    if (accessToken != null && refreshToken != null) {
      return {
        'accessToken': utf8.decode(base64.decode(accessToken)),
        'refreshToken': utf8.decode(base64.decode(refreshToken)),
      };
    }
    return null;
  }

  bool get isAuthenticated {
    return _getItem(CredentialKey.accessToken) != null;
  }

  LoggedUserModel? get userLoggedInfo {
    final userInfo = _getItem(CredentialKey.userInfo);
    if (userInfo != null) {
      final decodedInfo = utf8.decode(base64.decode(userInfo));
      return LoggedUserModel.fromJson(jsonDecode(decodedInfo));
    }
    return null;
  }

  void updateUserLoggedInfo(LoggedUserModel updates) {
    final currentUserInfo = userLoggedInfo;
    if (currentUserInfo != null) {
      final updatedInfo = currentUserInfo.copyWith(
        id: updates.id.isNotEmpty ? updates.id : null,
        email: updates.email.isNotEmpty ? updates.email : null,
        name: updates.name.isNotEmpty ? updates.name : null,
        imgUrl: updates.imgUrl.isNotEmpty ? updates.imgUrl : null,
        roles: updates.roles.isNotEmpty ? updates.roles : null,
      );

      final isRemember = _prefs.getString(CredentialKey.userInfo) != null;
      _setItem(
          CredentialKey.userInfo, base64.encode(utf8.encode(jsonEncode(updatedInfo.toJson()))), isRemember);

      _userInfoController.add(updatedInfo);
    }
  }

  void setCredential(LoginResponse? data, {bool isRemember = false}) {
    if (data?.accessToken != null && data?.refreshToken != null) {
      final decodedToken = _decodeJwt(data!.accessToken!);

      final loggedUser = LoggedUserModel(
        id: decodedToken['sub']?.toString() ?? '',
        email: decodedToken['email']?.toString() ?? '',
        name: decodedToken['name']?.toString() ?? '',
        imgUrl: decodedToken['imgUrl']?.toString() ?? '',
        roles: decodedToken['roles'] != null ? List<String>.from(decodedToken['roles']) : [],
      );

      _setItem(
          CredentialKey.userInfo, base64.encode(utf8.encode(jsonEncode(loggedUser.toJson()))), isRemember);
      setAccessToken(data.accessToken!, data.refreshToken!, isRemember: isRemember);

      _userInfoController.add(loggedUser);
    } else {
      clearAccessToken();
    }
  }

  void setAccessToken(String token, String refreshToken, {bool isRemember = false}) {
    _setItem(CredentialKey.accessToken, base64.encode(utf8.encode(token)), isRemember);
    _setItem(CredentialKey.refreshToken, base64.encode(utf8.encode(refreshToken)), isRemember);
  }

  void clearAccessToken() {
    _removeItem(CredentialKey.accessToken);
    _removeItem(CredentialKey.refreshToken);
    _removeItem(CredentialKey.userInfo);
    _userInfoController.add(null);
  }

  bool hasRole(String requiredRole) {
    final userInfo = userLoggedInfo;
    if (userInfo == null || userInfo.roles.isEmpty) return false;
    return userInfo.roles.contains(requiredRole);
  }

  bool hasAnyRole(List<String> requiredRoles) {
    final userInfo = userLoggedInfo;
    if (userInfo == null || userInfo.roles.isEmpty) return false;
    return requiredRoles.any((role) => userInfo.roles.contains(role));
  }

  Map<String, dynamic> _decodeJwt(String token) {
    final parts = token.split('.');
    if (parts.length != 3) {
      throw Exception('invalid token');
    }
    final payload = _decodeBase64(parts[1]);
    final payloadMap = json.decode(payload);
    if (payloadMap is! Map<String, dynamic>) {
      throw Exception('invalid payload');
    }
    return payloadMap;
  }

  String _decodeBase64(String str) {
    String output = str.replaceAll('-', '+').replaceAll('_', '/');
    switch (output.length % 4) {
      case 0:
        break;
      case 2:
        output += '==';
        break;
      case 3:
        output += '=';
        break;
      default:
        throw Exception('Illegal base64url string!"');
    }
    return utf8.decode(base64Decode(output));
  }
}
