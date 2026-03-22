import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:prm_project/core/auth/credential.service.dart';
import 'package:prm_project/page/profile/edit_profile_screen.dart'
    show EditProfileScreen;
import 'package:prm_project/services/api_service.dart';
import 'package:public_openapi/public_openapi.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  bool _isLoading = true;
  String? _errorMessage;
  ProfileResponse? _profile;

  @override
  void initState() {
    super.initState();
    _loadProfile();
  }

  Future<void> _loadProfile() async {
    setState(() {
      _isLoading = true;
      _errorMessage = null;
    });

    final accessToken = CredentialService().credential?['accessToken'];

    if (accessToken == null || accessToken.isEmpty) {
      setState(() {
        _isLoading = false;
        _errorMessage = 'No access token found. Please login again.';
      });
      return;
    }

    try {
      final response = await ApiService.client
          .getAccountApi()
          .apiAccountProfileGet(
            headers: {'Authorization': 'Bearer $accessToken'},
          );

      if (response.data?.success == true && response.data?.data != null) {
        setState(() {
          _profile = response.data!.data;
          _isLoading = false;
        });
      } else {
        setState(() {
          _isLoading = false;
          _errorMessage =
              response.data?.message ?? 'Unable to load profile data.';
        });
      }
    } on DioException catch (e) {
      setState(() {
        _isLoading = false;
        _errorMessage =
            e.response?.statusMessage ?? 'Network error while loading profile.';
      });
    } catch (_) {
      setState(() {
        _isLoading = false;
        _errorMessage = 'Unexpected error while loading profile.';
      });
    }
  }

  String _fullName() {
    final firstName = _profile?.firstName?.trim() ?? '';
    final lastName = _profile?.lastName?.trim() ?? '';
    final fromApi = '$firstName $lastName'.trim();

    if (fromApi.isNotEmpty) {
      return fromApi;
    }

    final localName = CredentialService().userLoggedInfo?.name.trim() ?? '';
    if (localName.isNotEmpty) {
      return localName;
    }

    return 'Unknown User';
  }

  String _avatarUrl() {
    final fromApi = _profile?.avatarUrl?.trim() ?? '';
    if (fromApi.isNotEmpty) {
      return fromApi;
    }

    final localAvatar = CredentialService().userLoggedInfo?.imgUrl.trim() ?? '';
    if (localAvatar.isNotEmpty) {
      return localAvatar;
    }

    return 'https://i.postimg.cc/cCsYDjvj/user-2.png';
  }

  String _profileId() {
    final fromApi = _profile?.id?.trim() ?? '';
    if (fromApi.isNotEmpty) {
      return fromApi;
    }
    return CredentialService().userLoggedInfo?.id ?? '-';
  }

  String _email() {
    final fromApi = _profile?.email?.trim() ?? '';
    if (fromApi.isNotEmpty) {
      return fromApi;
    }
    return CredentialService().userLoggedInfo?.email ?? '-';
  }

  String _phone() {
    final fromApi = _profile?.phone?.trim() ?? '';
    return fromApi.isNotEmpty ? fromApi : '-';
  }

  String _gender() {
    final fromApi = _profile?.gender?.trim() ?? '';
    return fromApi.isNotEmpty ? fromApi : '-';
  }

  String _dateOfBirth() {
    final date = _profile?.dateOfBirth;
    return date != null ? date.toString() : '-';
  }

  Future<void> _openEditProfile() async {
    final result = await Navigator.of(context).push<bool>(
      MaterialPageRoute(
        builder: (_) => EditProfileScreen(
          userId: _profileId(),
          fullName: _fullName(),
          email: _email(),
          phone: _phone(),
          gender: _gender(),
          dateOfBirth: _dateOfBirth(),
          avatarUrl: _avatarUrl(),
        ),
      ),
    );

    if (result == true) {
      _loadProfile();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: false,
        elevation: 0,
        backgroundColor: const Color(0xFF00BF6D),
        foregroundColor: Colors.white,
        title: const Text('Profile'),
        actions: [
          IconButton(
            icon: const Icon(Icons.settings_outlined),
            onPressed: _loadProfile,
          ),
        ],
      ),
      body: _isLoading
          ? const Center(child: CircularProgressIndicator())
          : SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                children: [
                  ProfilePic(image: _avatarUrl()),
                  Text(
                    _fullName(),
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  if (_errorMessage != null)
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Text(
                        _errorMessage!,
                        style: const TextStyle(color: Colors.red),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  const Divider(height: 16.0 * 2),
                  Info(infoKey: 'User ID', info: _profileId()),
                  Info(infoKey: 'Gender', info: _gender()),
                  Info(infoKey: 'Phone', info: _phone()),
                  Info(infoKey: 'Email Address', info: _email()),
                  Info(infoKey: 'Date of Birth', info: _dateOfBirth()),
                  const SizedBox(height: 16.0),
                  Align(
                    alignment: Alignment.centerRight,
                    child: SizedBox(
                      width: 160,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFF00BF6D),
                          foregroundColor: Colors.white,
                          minimumSize: const Size(double.infinity, 48),
                          shape: const StadiumBorder(),
                        ),
                        onPressed: _openEditProfile,
                        child: const Text('Edit profile'),
                      ),
                    ),
                  ),
                ],
              ),
            ),
    );
  }
}

class ProfilePic extends StatelessWidget {
  const ProfilePic({
    super.key,
    required this.image,
    this.isShowPhotoUpload = false,
    this.imageUploadBtnPress,
  });

  final String image;
  final bool isShowPhotoUpload;
  final VoidCallback? imageUploadBtnPress;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      margin: const EdgeInsets.symmetric(vertical: 16.0),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: Theme.of(
            context,
          ).textTheme.bodyLarge!.color!.withValues(alpha: 0.08),
        ),
      ),
      child: Stack(
        alignment: Alignment.bottomRight,
        children: [
          CircleAvatar(radius: 50, backgroundImage: NetworkImage(image)),
          if (isShowPhotoUpload)
            InkWell(
              onTap: imageUploadBtnPress,
              child: CircleAvatar(
                radius: 13,
                backgroundColor: Theme.of(context).primaryColor,
                child: const Icon(Icons.add, color: Colors.white, size: 20),
              ),
            ),
        ],
      ),
    );
  }
}

class Info extends StatelessWidget {
  const Info({super.key, required this.infoKey, required this.info});

  final String infoKey, info;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            infoKey,
            style: TextStyle(
              color: Theme.of(
                context,
              ).textTheme.bodyLarge!.color!.withValues(alpha: 0.8),
            ),
          ),
          Text(info),
        ],
      ),
    );
  }
}
