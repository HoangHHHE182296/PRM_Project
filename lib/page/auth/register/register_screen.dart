import 'package:flutter/material.dart';
import 'package:prm_project/shared/theme/app_colors.dart';
import 'package:prm_project/shared/widgets/buttons/app_button.widget.dart';
import 'package:prm_project/shared/widgets/fields/app_text_input.widget.dart';
import 'package:prm_project/shared/widgets/fields/app_password_input.widget.dart';
import 'package:prm_project/shared/widgets/fields/app_date_picker.widget.dart';
import 'package:prm_project/core/auth/auth.service.dart';
import 'package:prm_project/services/api_service.dart';
import 'package:public_openapi/public_openapi.dart';
import 'package:dio/dio.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final _formKey = GlobalKey<FormState>();

  final _firstNameController = TextEditingController();
  final _lastNameController = TextEditingController();
  final _phoneController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();

  DateTime? _birthDate;

  String _gender = "male";
  bool _isAgree = false;
  bool _isLoading = false;

  late final AuthService _authService;
  @override
  void initState() {
    super.initState();
    _authService = AuthService(ApiService.client.getAuthApi());
  }

  @override
  void dispose() {
    _firstNameController.dispose();
    _lastNameController.dispose();
    _phoneController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    super.dispose();
  }

  Future<void> _pickDate() async {
    final picked = await showDatePicker(
      context: context,
      firstDate: DateTime(1900),
      lastDate: DateTime.now(),
      initialDate: DateTime(2000),
    );

    if (picked != null) {
      setState(() {
        _birthDate = picked;
      });
    }
  }

  Future<void> _handleRegister() async {
    if (!_formKey.currentState!.validate()) return;

    if (!_isAgree) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("Bạn cần đồng ý điều khoản")),
      );
      return;
    }

    setState(() {
      _isLoading = true;
    });

    try {
      final command = RegisterCommand(
        (b) => b
          ..firstName = _firstNameController.text
          ..lastName = _lastNameController.text
          ..email = _emailController.text
          ..password = _passwordController.text
          ..phone = _phoneController.text
          ..gender = _gender
          ..dateOfBirth = _birthDate == null
              ? null
              : Date(_birthDate!.year, _birthDate!.month, _birthDate!.day),
      );

      final user = await _authService.register(command);

      if (user != null) {
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(const SnackBar(content: Text("Đăng ký thành công")));

        Navigator.pop(context, "Register success!!!");
      }
    } catch (e) {
      String message = "Đăng ký thất bại";

      if (e is DioException) {
        final data = e.response?.data;

        if (data != null) {
          if (data is Map) {
            message =
                data["error"]?["description"] ?? data["message"] ?? message;
          }
        }
      }

      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text(message)));
    }
    if (mounted) {
      setState(() {
        _isLoading = false;
      });
    }
  }

  String _formatDate(DateTime date) {
    return "${date.day}/${date.month}/${date.year}";
  }

  Widget _buildGenderRadio(String label, String value) {
    return Row(
      children: [
        Radio<String>(
          value: value,
          groupValue: _gender,
          activeColor: AppColors.primary,
          onChanged: (v) {
            setState(() {
              _gender = v!;
            });
          },
        ),
        Text(label),
      ],
    );
  }

  Widget _buildGoogleIcon() {
    return Image.network(
      'https://lh3.googleusercontent.com/COxitqgJr1sJnIDe8-jiKhxDx1FrYbtRHKJ9z_hELisAlapwE9LUPh6fcXIfb5vwpbMl4xl9H9TRFPc5NOO8Sb3VSgIBrfRYvW6cUA',
      height: 20,
      width: 20,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 32),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /// TITLE
                RichText(
                  text: const TextSpan(
                    text: "Sesame",
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: AppColors.error,
                    ),
                    children: [
                      TextSpan(
                        text: "Box",
                        style: TextStyle(color: AppColors.primary),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 12),

                const Text(
                  "Mở cánh cửa đến với thế giới quà tặng tinh tế",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),

                const SizedBox(height: 24),

                /// HỌ
                AppTextInputWidget(
                  label: "Họ",
                  hint: "Nhập họ của bạn...",
                  controller: _firstNameController,
                  isRequired: true,
                ),

                const SizedBox(height: 16),

                /// TÊN
                AppTextInputWidget(
                  label: "Tên",
                  hint: "Nhập tên của bạn...",
                  controller: _lastNameController,
                  isRequired: true,
                ),

                const SizedBox(height: 16),

                /// NGÀY SINH
                AppDatePickerWidget(
                  label: "Ngày sinh",
                  hint: "Chọn ngày sinh của bạn",
                  value: _birthDate,
                  isRequired: true,
                  
                  minDate: DateTime(2000),
                  maxDate: DateTime.now(),
                  onChanged: (date) {
                    setState(() {
                      _birthDate = date;
                    });
                  },
                ),
                const SizedBox(height: 16),

                /// GIỚI TÍNH
                const Text("Giới tính"),

                Row(
                  children: [
                    _buildGenderRadio("Nam", "male"),
                    _buildGenderRadio("Nữ", "female"),
                    _buildGenderRadio("Khác", "other"),
                  ],
                ),

                const SizedBox(height: 16),

                /// PHONE
                AppTextInputWidget(
                  label: "Số điện thoại",
                  hint: "Nhập số điện thoại...",
                  controller: _phoneController,
                  keyboardType: TextInputType.phone,
                ),

                const SizedBox(height: 16),

                /// EMAIL
                AppTextInputWidget(
                  label: "Email",
                  hint: "Nhập email...",
                  controller: _emailController,
                  keyboardType: TextInputType.emailAddress,
                  isRequired: true,
                ),

                const SizedBox(height: 16),

                /// PASSWORD
                AppPasswordInputWidget(
                  label: "Mật khẩu",
                  hint: "Tạo mật khẩu...",
                  controller: _passwordController,
                  isRequired: true,
                ),

                const SizedBox(height: 16),

                /// CONFIRM PASSWORD
                AppPasswordInputWidget(
                  label: "Xác nhận mật khẩu",
                  hint: "Xác nhận mật khẩu...",
                  controller: _confirmPasswordController,
                  isRequired: true,
                  validator: (value) {
                    if (value != _passwordController.text) {
                      return "Mật khẩu không khớp";
                    }
                    return null;
                  },
                ),

                const SizedBox(height: 16),

                /// TERMS
                Row(
                  children: [
                    Checkbox(
                      value: _isAgree,
                      activeColor: AppColors.primary,
                      onChanged: (v) {
                        setState(() {
                          _isAgree = v ?? false;
                        });
                      },
                    ),
                    const Expanded(
                      child: Text(
                        "Tôi đồng ý với Điều khoản Dịch vụ và Chính sách Quyền riêng tư",
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 16),

                /// REGISTER BUTTON
                AppButtonWidget(
                  text: "Tạo tài khoản",
                  isLoading: _isLoading,
                  onPressed: _handleRegister,
                ),

                const SizedBox(height: 20),

                /// GOOGLE
                AppButtonWidget(
                  text: "Đăng ký bằng tài khoản Google",
                  mode: ButtonMode.outline,
                  customPrefix: _buildGoogleIcon(),
                  onPressed: () {},
                ),

                const SizedBox(height: 20),

                /// LOGIN
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Đã có tài khoản? "),
                    TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Text("Đăng nhập ngay"),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
