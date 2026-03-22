import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:dio/dio.dart';
import 'package:image_picker/image_picker.dart';
import 'package:prm_project/core/auth/credential.service.dart';
import 'package:prm_project/services/api_service.dart';
import 'package:public_openapi/public_openapi.dart';

class EditProfileScreen extends StatefulWidget {
  const EditProfileScreen({
    super.key,
    required this.userId,
    required this.fullName,
    required this.email,
    required this.phone,
    required this.gender,
    required this.dateOfBirth,
    required this.avatarUrl,
  });

  final String userId;
  final String fullName;
  final String email;
  final String phone;
  final String gender;
  final String dateOfBirth;
  final String avatarUrl;

  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  final _formKey = GlobalKey<FormState>();

  late final TextEditingController _nameController;
  late final TextEditingController _emailController;
  late final TextEditingController _phoneController;
  late final TextEditingController _genderController;
  late final TextEditingController _dobController;
  late String _avatarUrl;

  bool _isSaving = false;
  bool _isUploadingAvatar = false;

  @override
  void initState() {
    super.initState();
    _nameController = TextEditingController(text: widget.fullName);
    _emailController = TextEditingController(text: widget.email);
    _phoneController = TextEditingController(
      text: widget.phone == '-' ? '' : widget.phone,
    );
    final genderValue = (widget.gender == '-' || widget.gender.trim().isEmpty)
        ? ''
        : widget.gender.trim();
    _genderController = TextEditingController(
      text: ['Male', 'Female', 'Other'].contains(genderValue)
          ? genderValue
          : '',
    );
    _dobController = TextEditingController(
      text: widget.dateOfBirth == '-' ? '' : widget.dateOfBirth,
    );
    _avatarUrl = widget.avatarUrl;
  }

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _phoneController.dispose();
    _genderController.dispose();
    _dobController.dispose();
    super.dispose();
  }

  Future<void> _pickAndUploadAvatar() async {
    if (_isUploadingAvatar) {
      return;
    }

    final accessToken = CredentialService().credential?['accessToken'];
    if (accessToken == null || accessToken.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Bạn chưa đăng nhập. Vui lòng đăng nhập lại.'),
        ),
      );
      return;
    }

    try {
      final picker = ImagePicker();
      final pickedFile = await picker.pickImage(source: ImageSource.gallery);
      if (pickedFile == null) {
        return;
      }

      if (mounted) {
        setState(() {
          _isUploadingAvatar = true;
        });
      }

      final imageBytes = await pickedFile.readAsBytes();
      final uploadFile = MultipartFile.fromBytes(
        imageBytes,
        filename: pickedFile.name,
      );

      final uploadRes = await ApiService.client
          .getAccountApi()
          .apiAccountProfileAvatarPost(
            file: uploadFile,
            headers: {'Authorization': 'Bearer $accessToken'},
          );

      if (uploadRes.data?.success != true) {
        throw Exception(uploadRes.data?.message ?? 'Upload avatar thất bại.');
      }

      final uploadedAvatar = uploadRes.data?.data?.trim() ?? '';
      if (uploadedAvatar.isNotEmpty && mounted) {
        setState(() {
          _avatarUrl = uploadedAvatar;
        });
      }
    } on DioException catch (e) {
      if (!mounted) {
        return;
      }
      final message =
          e.response?.data?.toString() ??
          e.response?.statusMessage ??
          'Lỗi mạng khi upload avatar.';
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text(message)));
    } on PlatformException catch (e) {
      if (!mounted) {
        return;
      }
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
            e.message ??
                'Không thể mở thư viện ảnh. Vui lòng kiểm tra quyền truy cập.',
          ),
        ),
      );
    } on MissingPluginException {
      if (!mounted) {
        return;
      }
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text(
            'Thiết bị chưa sẵn sàng cho chọn ảnh. Hãy khởi động lại app rồi thử lại.',
          ),
        ),
      );
    } catch (e) {
      if (!mounted) {
        return;
      }
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text(e.toString())));
    } finally {
      if (mounted) {
        setState(() {
          _isUploadingAvatar = false;
        });
      }
    }
  }

  Date? _parseDateOfBirth(String value) {
    final input = value.trim();
    if (input.isEmpty) {
      return null;
    }

    final parts = input.split('-');
    if (parts.length != 3) {
      return null;
    }

    final year = int.tryParse(parts[0]);
    final month = int.tryParse(parts[1]);
    final day = int.tryParse(parts[2]);
    if (year == null || month == null || day == null) {
      return null;
    }

    return Date(year, month, day);
  }

  Future<void> _pickDateOfBirth() async {
    final current = _parseDateOfBirth(_dobController.text)?.toDateTime();
    final now = DateTime.now();
    final initialDate = current ?? DateTime(now.year - 18, now.month, now.day);

    final picked = await showDatePicker(
      context: context,
      initialDate: initialDate,
      firstDate: DateTime(1900),
      lastDate: now,
    );

    if (picked != null) {
      _dobController.text = Date(
        picked.year,
        picked.month,
        picked.day,
      ).toString();
    }
  }

  List<String> _splitName(String fullName) {
    final tokens = fullName
        .trim()
        .split(RegExp(r'\s+'))
        .where((e) => e.isNotEmpty)
        .toList();
    if (tokens.isEmpty) {
      return ['', ''];
    }
    if (tokens.length == 1) {
      return [tokens.first, ''];
    }
    return [tokens.first, tokens.sublist(1).join(' ')];
  }

  Future<void> _saveUpdate() async {
    if (!_formKey.currentState!.validate()) {
      return;
    }

    final accessToken = CredentialService().credential?['accessToken'];
    if (accessToken == null || accessToken.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Bạn chưa đăng nhập. Vui lòng đăng nhập lại.'),
        ),
      );
      return;
    }

    final split = _splitName(_nameController.text);
    final firstName = split[0];
    final lastName = split[1];

    setState(() {
      _isSaving = true;
    });

    try {
      final updateCommand = UpdateProfileCommand(
        (b) => b
          ..userId = widget.userId.isEmpty || widget.userId == '-'
              ? null
              : widget.userId
          ..firstName = firstName.isEmpty ? null : firstName
          ..lastName = lastName.isEmpty ? null : lastName
          ..phone = _phoneController.text.trim().isEmpty
              ? null
              : _phoneController.text.trim()
          ..dateOfBirth = _parseDateOfBirth(_dobController.text)
          ..gender = _genderController.text.trim().isEmpty
              ? null
              : _genderController.text.trim(),
      );

      final updateRes = await ApiService.client
          .getAccountApi()
          .apiAccountProfilePut(
            updateProfileCommand: updateCommand,
            headers: {'Authorization': 'Bearer $accessToken'},
          );

      if (updateRes.data?.success != true) {
        throw Exception(
          updateRes.data?.message ?? 'Cập nhật profile thất bại.',
        );
      }

      if (!mounted) {
        return;
      }

      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Cập nhật thông tin thành công.')),
      );
      Navigator.of(context).pop(true);
    } on DioException catch (e) {
      if (!mounted) {
        return;
      }
      final message =
          e.response?.data?.toString() ??
          e.response?.statusMessage ??
          'Lỗi mạng khi cập nhật profile.';
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text(message)));
    } catch (e) {
      if (!mounted) {
        return;
      }
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text(e.toString())));
    } finally {
      if (mounted) {
        setState(() {
          _isSaving = false;
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: false,
        elevation: 0,
        backgroundColor: const Color(0xFF00BF6D),
        foregroundColor: Colors.white,
        title: const Text('Edit Profile'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          children: [
            ProfilePic(
              image: _avatarUrl,
              isShowPhotoUpload: true,
              imageUploadBtnPress: _pickAndUploadAvatar,
            ),
            const Divider(),
            Form(
              key: _formKey,
              child: Column(
                children: [
                  UserInfoEditField(
                    text: 'Name',
                    child: TextFormField(
                      controller: _nameController,
                      validator: (value) {
                        if (value == null || value.trim().isEmpty) {
                          return 'Name is required';
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: const Color(
                          0xFF00BF6D,
                        ).withValues(alpha: 0.05),
                        contentPadding: const EdgeInsets.symmetric(
                          horizontal: 16.0 * 1.5,
                          vertical: 16.0,
                        ),
                        border: const OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.all(Radius.circular(50)),
                        ),
                      ),
                    ),
                  ),
                  UserInfoEditField(
                    text: 'Email',
                    child: TextFormField(
                      controller: _emailController,
                      readOnly: true,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: const Color(
                          0xFF00BF6D,
                        ).withValues(alpha: 0.05),
                        contentPadding: const EdgeInsets.symmetric(
                          horizontal: 16.0 * 1.5,
                          vertical: 16.0,
                        ),
                        border: const OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.all(Radius.circular(50)),
                        ),
                      ),
                    ),
                  ),
                  UserInfoEditField(
                    text: 'Phone',
                    child: TextFormField(
                      controller: _phoneController,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: const Color(
                          0xFF00BF6D,
                        ).withValues(alpha: 0.05),
                        contentPadding: const EdgeInsets.symmetric(
                          horizontal: 16.0 * 1.5,
                          vertical: 16.0,
                        ),
                        border: const OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.all(Radius.circular(50)),
                        ),
                      ),
                    ),
                  ),
                  UserInfoEditField(
                    text: 'Gender',
                    child: DropdownButtonFormField<String>(
                      value:
                          ([
                            'Male',
                            'Female',
                            'Other',
                          ].contains(_genderController.text))
                          ? _genderController.text
                          : null,
                      hint: const Text('Select Gender'),
                      items: const [
                        DropdownMenuItem(value: 'Male', child: Text('Male')),
                        DropdownMenuItem(
                          value: 'Female',
                          child: Text('Female'),
                        ),
                        DropdownMenuItem(value: 'Other', child: Text('Other')),
                      ],
                      onChanged: (value) {
                        setState(() {
                          _genderController.text = value ?? '';
                        });
                      },
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: const Color(
                          0xFF00BF6D,
                        ).withValues(alpha: 0.05),
                        contentPadding: const EdgeInsets.symmetric(
                          horizontal: 16.0 * 1.5,
                          vertical: 16.0,
                        ),
                        border: const OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.all(Radius.circular(50)),
                        ),
                      ),
                    ),
                  ),
                  UserInfoEditField(
                    text: 'Date of Birth',
                    child: TextFormField(
                      controller: _dobController,
                      readOnly: true,
                      onTap: _pickDateOfBirth,
                      decoration: InputDecoration(
                        hintText: 'YYYY-MM-DD',
                        suffixIcon: const Icon(Icons.calendar_today, size: 20),
                        filled: true,
                        fillColor: const Color(
                          0xFF00BF6D,
                        ).withValues(alpha: 0.05),
                        contentPadding: const EdgeInsets.symmetric(
                          horizontal: 16.0 * 1.5,
                          vertical: 16.0,
                        ),
                        border: const OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.all(Radius.circular(50)),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SizedBox(
                  width: 120,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Theme.of(
                        context,
                      ).textTheme.bodyLarge!.color!.withValues(alpha: 0.08),
                      foregroundColor: Colors.white,
                      minimumSize: const Size(double.infinity, 48),
                      shape: const StadiumBorder(),
                    ),
                    child: const Text('Cancel'),
                  ),
                ),
                const SizedBox(width: 16.0),
                SizedBox(
                  width: 160,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF00BF6D),
                      foregroundColor: Colors.white,
                      minimumSize: const Size(double.infinity, 48),
                      shape: const StadiumBorder(),
                    ),
                    onPressed: _isSaving ? null : _saveUpdate,
                    child: _isSaving
                        ? const SizedBox(
                            height: 18,
                            width: 18,
                            child: CircularProgressIndicator(
                              strokeWidth: 2,
                              valueColor: AlwaysStoppedAnimation<Color>(
                                Colors.white,
                              ),
                            ),
                          )
                        : const Text('Save Update'),
                  ),
                ),
              ],
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
    final fallbackImage = image.trim().isEmpty
        ? 'https://i.postimg.cc/cCsYDjvj/user-2.png'
        : image;
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
          CircleAvatar(
            radius: 50,
            backgroundImage: NetworkImage(fallbackImage),
          ),
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

class UserInfoEditField extends StatelessWidget {
  const UserInfoEditField({super.key, required this.text, required this.child});

  final String text;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0 / 2),
      child: Row(
        children: [
          Expanded(flex: 2, child: Text(text)),
          Expanded(flex: 3, child: child),
        ],
      ),
    );
  }
}
