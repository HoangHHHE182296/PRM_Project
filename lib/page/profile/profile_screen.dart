import 'package:flutter/material.dart';
import 'package:prm_project/shared/theme/app_colors.dart';
import 'package:prm_project/core/di/injection.dart';
import 'package:prm_project/core/service/credential_service.dart';
import 'package:prm_project/core/service/auth_service.dart';
import 'package:public_openapi/src/model/profile_response_api_success_response.dart';
import 'package:public_openapi/src/model/update_profile_command.dart';
import 'package:public_openapi/src/model/date.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  bool _isLoading = true;
  ProfileResponseApiSuccessResponse? _profileData;

  @override
  void initState() {
    super.initState();
    _loadProfile();
  }

  Future<void> _loadProfile() async {
    setState(() => _isLoading = true);
    final data = await sl<AuthService>().getProfile();
    if (mounted) {
      setState(() {
        _profileData = data;
        _isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    if (_isLoading) {
      return const Scaffold(body: Center(child: CircularProgressIndicator()));
    }

    return Scaffold(
      backgroundColor: const Color(0xFFF9FAFB),
      appBar: AppBar(
        title: const Text(
          'Hồ sơ cá nhân',
          style: TextStyle(
            color: AppColors.textDark,
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        iconTheme: const IconThemeData(color: AppColors.textDark),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(1),
          child: Container(color: AppColors.border, height: 1),
        ),
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          final isDesktop = constraints.maxWidth > 800;
          return SingleChildScrollView(
            padding: const EdgeInsets.all(24.0),
            child: isDesktop
                ? Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        flex: 1,
                        child: _ProfileLeftCard(profileData: _profileData),
                      ),
                      const SizedBox(width: 24),
                      Expanded(
                        flex: 2,
                        child: Column(
                          children: [
                            _PersonalInfoCard(profileData: _profileData, onReload: _loadProfile),
                            const SizedBox(height: 24),
                            const _AccountSecurityCard(),
                          ],
                        ),
                      ),
                    ],
                  )
                : Column(
                    children: [
                      _ProfileLeftCard(profileData: _profileData),
                      const SizedBox(height: 24),
                      _PersonalInfoCard(profileData: _profileData, onReload: _loadProfile),
                      const SizedBox(height: 24),
                      const _AccountSecurityCard(),
                    ],
                  ),
          );
        },
      ),
    );
  }
}

class _ProfileLeftCard extends StatelessWidget {
  final ProfileResponseApiSuccessResponse? profileData;
  const _ProfileLeftCard({this.profileData});

  @override
  Widget build(BuildContext context) {
    final user = sl<CredentialService>().userLoggedInfo;

    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.04),
            blurRadius: 20,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: Column(
          children: [
            // Top background gradient
            Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Container(
                  height: 120, // Background height
                  margin: const EdgeInsets.only(bottom: 50), // Space for avatar to overlap
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Color(0xFFFFF1EB), Color(0xFFFEE2E2)], // Light Orange/Pink
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                  ),
                ),
                // Avatar
                Positioned(
                  child: Stack(
                    children: [
                      Container(
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: AppColors.primaryDark,
                          border: Border.all(color: Colors.orange, width: 3),
                        ),
                        alignment: Alignment.center,
                        child: const Text(
                          'T',
                          style: TextStyle(
                            fontSize: 48,
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        right: 0,
                        child: Container(
                          padding: const EdgeInsets.all(6),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.1),
                                blurRadius: 4,
                              ),
                            ],
                          ),
                          child: const Icon(
                            Icons.camera_alt_outlined,
                            size: 16,
                            color: AppColors.primary,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            // Name with Gradient
            ShaderMask(
              shaderCallback: (bounds) => const LinearGradient(
                colors: [Colors.orange, AppColors.error],
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
              ).createShader(bounds),
              child: Text(
                user?.name ?? 'Không có tên',
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white, // Color must be white for ShaderMask
                ),
              ),
            ),
            const SizedBox(height: 8),
            Text(
              user?.email ?? 'Chưa cập nhật email',
              style: const TextStyle(
                color: AppColors.textLight,
                fontSize: 14,
              ),
            ),
            const SizedBox(height: 24),
            const Divider(color: AppColors.border, height: 1),
            // Details List
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: Column(
                children: [
                  _buildDetailRow(
                    icon: Icons.phone_outlined,
                    iconColor: AppColors.primary,
                    iconBgColor: AppColors.primary.withOpacity(0.1),
                    label: 'SỐ ĐIỆN THOẠI',
                    value: profileData?.data?.phone ?? 'Chưa cung cấp',
                  ),
                  const SizedBox(height: 24),
                  _buildDetailRow(
                    icon: Icons.calendar_today_outlined,
                    iconColor: Colors.pink,
                    iconBgColor: Colors.pink.withOpacity(0.1),
                    label: 'NGÀY SINH',
                    value: profileData?.data?.dateOfBirth != null
                        ? '${profileData!.data!.dateOfBirth!.day}/${profileData!.data!.dateOfBirth!.month}/${profileData!.data!.dateOfBirth!.year}'
                        : 'Chưa cung cấp',
                  ),
                  const SizedBox(height: 24),
                  _buildDetailRow(
                    icon: Icons.transgender_outlined,
                    iconColor: Colors.blue,
                    iconBgColor: Colors.blue.withOpacity(0.1),
                    label: 'GIỚI TÍNH',
                    value: profileData?.data?.gender ?? 'Không xác định',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDetailRow({
    required IconData icon,
    required Color iconColor,
    required Color iconBgColor,
    required String label,
    required String value,
  }) {
    return Row(
      children: [
        Container(
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: iconBgColor,
            shape: BoxShape.circle,
          ),
          child: Icon(icon, color: iconColor, size: 20),
        ),
        const SizedBox(width: 16),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              label,
              style: const TextStyle(
                color: AppColors.textHint,
                fontSize: 10,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 4),
            Text(
              value,
              style: const TextStyle(
                color: AppColors.textDark,
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class _PersonalInfoCard extends StatefulWidget {
  final ProfileResponseApiSuccessResponse? profileData;
  final VoidCallback onReload;
  const _PersonalInfoCard({this.profileData, required this.onReload});

  @override
  State<_PersonalInfoCard> createState() => _PersonalInfoCardState();
}

class _PersonalInfoCardState extends State<_PersonalInfoCard> {
  bool _isEditing = false;
  bool _isSaving = false;
  
  final _firstNameController = TextEditingController();
  final _lastNameController = TextEditingController();
  final _phoneController = TextEditingController();
  DateTime? _selectedDate;
  String _selectedGender = 'Khác';

  @override
  void initState() {
    super.initState();
    _initData();
  }

  @override
  void didUpdateWidget(covariant _PersonalInfoCard oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.profileData != widget.profileData) {
      _initData();
    }
  }

  void _initData() {
    final user = sl<CredentialService>().userLoggedInfo;
    final data = widget.profileData?.data;

    String fName = data?.firstName ?? '';
    String lName = data?.lastName ?? '';
    
    if (fName.isEmpty && lName.isEmpty && user?.name != null) {
      final parts = user!.name!.trim().split(' ');
      if (parts.isNotEmpty) {
        if (parts.length > 1) {
          lName = parts.last;
          fName = parts.sublist(0, parts.length - 1).join(' ');
        } else {
          fName = parts.first;
          lName = '';
        }
      }
    }

    _firstNameController.text = fName;
    _lastNameController.text = lName;
    _phoneController.text = data?.phone ?? '';
    if (data?.dateOfBirth != null) {
      _selectedDate = DateTime(data!.dateOfBirth!.year, data!.dateOfBirth!.month, data!.dateOfBirth!.day);
    }
    _selectedGender = data?.gender ?? 'Khác';
  }

  Future<void> _handleSave() async {
    setState(() => _isSaving = true);
    final command = UpdateProfileCommand((b) => b
      ..firstName = _firstNameController.text
      ..lastName = _lastNameController.text
      ..phone = _phoneController.text
      ..gender = _selectedGender
      ..dateOfBirth = _selectedDate != null 
          ? Date(_selectedDate!.year, _selectedDate!.month, _selectedDate!.day)
          : null
    );

    final success = await sl<AuthService>().updateProfile(command);
    if (mounted) {
      setState(() => _isSaving = false);
      if (success) {
        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Lưu thay đổi thành công')));
        setState(() => _isEditing = false);
        widget.onReload(); // Reload profile
      } else {
        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Cập nhật thất bại')));
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    if (_isEditing) {
      return _buildEditForm();
    }
    return _buildViewMode();
  }

  Widget _buildEditForm() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.04),
            blurRadius: 20,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        children: [
          Container(
            height: 4,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
              gradient: LinearGradient(
                colors: [AppColors.primary, Colors.blue],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            color: AppColors.primary.withOpacity(0.1),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: const Icon(Icons.badge_outlined, color: AppColors.primary, size: 20),
                        ),
                        const SizedBox(width: 12),
                        const Text('Thông tin cá nhân', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: AppColors.textDark)),
                      ],
                    ),
                    IconButton(
                      icon: const Icon(Icons.close),
                      onPressed: () => setState(() {
                        _isEditing = false;
                        _initData(); // Reset
                      }),
                    ),
                  ],
                ),
                const SizedBox(height: 24),
                const Divider(color: AppColors.border, height: 1),
                const SizedBox(height: 24),
                
                Row(
                  children: [
                    Expanded(child: _buildTextField('Tên *', _firstNameController)),
                    const SizedBox(width: 16),
                    Expanded(child: _buildTextField('Họ *', _lastNameController)),
                  ],
                ),
                const SizedBox(height: 16),
                Row(
                  children: [
                    Expanded(child: _buildTextField('Số điện thoại', _phoneController, prefixIcon: Icons.phone)),
                    const SizedBox(width: 16),
                    Expanded(child: _buildDatePicker()),
                  ],
                ),
                const SizedBox(height: 16),
                const Text('Giới tính *', style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold)),
                const SizedBox(height: 8),
                Row(
                  children: [
                    _buildRadio('Nam'),
                    _buildRadio('Nữ'),
                    _buildRadio('Khác'),
                  ],
                ),
                const SizedBox(height: 32),
                Align(
                  alignment: Alignment.centerRight,
                  child: ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFFB524F5), // Primary Purple/Pinkish
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                    ),
                    onPressed: _isSaving ? null : _handleSave,
                    icon: _isSaving ? const SizedBox(width: 16, height: 16, child: CircularProgressIndicator(color: Colors.white, strokeWidth: 2)) : const Icon(Icons.check),
                    label: const Text('Lưu thay đổi', style: TextStyle(fontWeight: FontWeight.bold)),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTextField(String label, TextEditingController controller, {IconData? prefixIcon}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label, style: const TextStyle(fontSize: 12, fontWeight: FontWeight.bold)),
        const SizedBox(height: 8),
        TextField(
          controller: controller,
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            prefixIcon: prefixIcon != null ? Icon(prefixIcon, color: AppColors.primary) : null,
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(8), borderSide: const BorderSide(color: AppColors.border)),
            enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(8), borderSide: const BorderSide(color: AppColors.border)),
            focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(8), borderSide: const BorderSide(color: AppColors.primary)),
          ),
        ),
      ],
    );
  }

  Widget _buildDatePicker() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('Ngày sinh *', style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold)),
        const SizedBox(height: 8),
        InkWell(
          onTap: () async {
            final date = await showDatePicker(
              context: context,
              initialDate: _selectedDate ?? DateTime.now(),
              firstDate: DateTime(1900),
              lastDate: DateTime.now(),
            );
            if (date != null) {
              setState(() => _selectedDate = date);
            }
          },
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
            decoration: BoxDecoration(
              border: Border.all(color: AppColors.border),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(_selectedDate != null ? '${_selectedDate!.day}/${_selectedDate!.month}/${_selectedDate!.year}' : 'Chọn ngày sinh'),
                const Icon(Icons.calendar_today_outlined, size: 20, color: AppColors.textHint),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildRadio(String value) {
    return Row(
      children: [
        Radio<String>(
          value: value,
          groupValue: _selectedGender,
          activeColor: AppColors.primary,
          onChanged: (val) => setState(() => _selectedGender = val!),
        ),
        Text(value),
        const SizedBox(width: 8),
      ],
    );
  }

  Widget _buildViewMode() {
    final user = sl<CredentialService>().userLoggedInfo;
    final data = widget.profileData?.data;

    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.04),
            blurRadius: 20,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        children: [
          // Gradient Top Border
          Container(
            height: 4,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
              gradient: LinearGradient(
                colors: [AppColors.primary, Colors.blue],
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: AppColors.primary.withOpacity(0.1),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: const Icon(
                        Icons.badge_outlined,
                        color: AppColors.primary,
                        size: 20,
                      ),
                    ),
                    const SizedBox(width: 12),
                    const Text(
                      'Thông tin cá nhân',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: AppColors.textDark,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 24),
                const Divider(color: AppColors.border, height: 1),
                const SizedBox(height: 32),
                // Info Grid
                LayoutBuilder(builder: (context, constraints) {
                  final isMobile = constraints.maxWidth < 600;
                  final fullName = '${data?.firstName ?? ''} ${data?.lastName ?? ''}'.trim();
                  if (isMobile) {
                    return Column(
                      children: [
                        _buildInfoColumn('HỌ TÊN', fullName.isNotEmpty ? fullName : (user?.name ?? 'Không có tên'), Icons.person_outline),
                        const SizedBox(height: 24),
                        _buildInfoColumn('SỐ ĐIỆN THOẠI', data?.phone ?? '—', Icons.phone_outlined),
                        const SizedBox(height: 24),
                        _buildInfoColumn('NGÀY SINH', data?.dateOfBirth != null ? '${data!.dateOfBirth!.day}/${data!.dateOfBirth!.month}/${data!.dateOfBirth!.year}' : '—', Icons.calendar_today_outlined),
                        const SizedBox(height: 24),
                        _buildInfoColumn('GIỚI TÍNH', data?.gender ?? '—', Icons.transgender_outlined),
                      ],
                    );
                  }
                  return Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            _buildInfoColumn('HỌ TÊN', fullName.isNotEmpty ? fullName : (user?.name ?? 'Không có tên'), Icons.person_outline),
                            const SizedBox(height: 32),
                            _buildInfoColumn('NGÀY SINH', data?.dateOfBirth != null ? '${data!.dateOfBirth!.day}/${data!.dateOfBirth!.month}/${data!.dateOfBirth!.year}' : '—', Icons.calendar_today_outlined),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            _buildInfoColumn('SỐ ĐIỆN THOẠI', data?.phone ?? '—', Icons.phone_outlined),
                            const SizedBox(height: 32),
                            _buildInfoColumn('GIỚI TÍNH', data?.gender ?? '—', Icons.transgender_outlined),
                          ],
                        ),
                      ),
                    ],
                  );
                }),
                const SizedBox(height: 32),
                Align(
                  alignment: Alignment.centerRight,
                  child: OutlinedButton.icon(
                    onPressed: () => setState(() => _isEditing = true),
                    icon: const Icon(Icons.edit_outlined, size: 16),
                    label: const Text('Chỉnh sửa hồ sơ', style: TextStyle(fontWeight: FontWeight.bold)),
                    style: OutlinedButton.styleFrom(
                      foregroundColor: AppColors.primary,
                      side: const BorderSide(color: AppColors.primary),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildInfoColumn(String label, String value, IconData icon) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(icon, size: 14, color: AppColors.textHint),
            const SizedBox(width: 8),
            Text(
              label,
              style: const TextStyle(
                color: AppColors.textHint,
                fontSize: 10,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        const SizedBox(height: 8),
        Text(
          value,
          style: const TextStyle(
            color: AppColors.textDark,
            fontSize: 15,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}

class _AccountSecurityCard extends StatelessWidget {
  const _AccountSecurityCard();

  @override
  Widget build(BuildContext context) {
    final user = sl<CredentialService>().userLoggedInfo;

    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.04),
            blurRadius: 20,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        children: [
          // Gradient Top Border
          Container(
            height: 4,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
              gradient: LinearGradient(
                colors: [Colors.orange, AppColors.error],
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: Colors.orange.withOpacity(0.1),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: const Icon(
                        Icons.shield_outlined,
                        color: Colors.orange,
                        size: 20,
                      ),
                    ),
                    const SizedBox(width: 12),
                    const Text(
                      'Bảo mật tài khoản',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: AppColors.textDark,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 24),
                const Divider(color: AppColors.border, height: 1),
                const SizedBox(height: 24),
                
                // Email Section
                _buildSecurityRow(
                  icon: Icons.email_outlined,
                  title: 'Địa chỉ Email',
                  subtitle: user?.email ?? 'Chưa cập nhật email',
                  buttonText: 'Xác minh tài khoản',
                  buttonOutlined: true,
                  onPressed: () {},
                ),
                
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 24),
                  child: Divider(color: AppColors.border, height: 1),
                ),
                
                // Password Section
                _buildSecurityRow(
                  icon: Icons.lock_outline,
                  title: 'Mật khẩu',
                  subtitle: '—',
                  buttonText: 'Đặt mật khẩu',
                  buttonOutlined: false,
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSecurityRow({
    required IconData icon,
    required String title,
    required String subtitle,
    required String buttonText,
    required bool buttonOutlined,
    required VoidCallback onPressed,
  }) {
    return LayoutBuilder(builder: (context, constraints) {
      final isMobile = constraints.maxWidth < 450;
      final content = Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: const Color(0xFFF3F4F6),
                    shape: BoxShape.circle,
                  ),
                  child: Icon(icon, color: AppColors.textHint, size: 20),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: const TextStyle(
                          color: AppColors.textDark,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        subtitle,
                        style: const TextStyle(
                          color: AppColors.textHint,
                          fontSize: 13,
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          if (!isMobile) const SizedBox(width: 16),
          if (!isMobile) _buildActionBtn(buttonText, buttonOutlined, onPressed),
        ],
      );

      if (isMobile) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            content,
            const SizedBox(height: 16),
            _buildActionBtn(buttonText, buttonOutlined, onPressed),
          ],
        );
      }
      return content;
    });
  }

  Widget _buildActionBtn(String text, bool isOutlined, VoidCallback onPressed) {
    if (isOutlined) {
      return OutlinedButton(
        onPressed: onPressed,
        style: OutlinedButton.styleFrom(
          foregroundColor: Colors.orange,
          side: const BorderSide(color: Colors.orange),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
        ),
        child: Text(text),
      );
    } else {
      return Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          gradient: const LinearGradient(
            colors: [Colors.orange, AppColors.error],
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
          ),
        ),
        child: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.transparent,
            shadowColor: Colors.transparent,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
          ),
          child: Text(text, style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
        ),
      );
    }
  }
}
