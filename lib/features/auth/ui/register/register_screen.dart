import 'package:flutter/material.dart';
import 'package:prm_project/shared/theme/app_colors.dart';
import 'package:prm_project/shared/widgets/buttons/app_button.widget.dart';
import 'package:prm_project/shared/widgets/fields/app_text_input.widget.dart';
import 'package:prm_project/shared/widgets/fields/app_password_input.widget.dart';
import 'package:prm_project/shared/widgets/fields/app_date_picker.widget.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:prm_project/core/di/injection.dart';
import 'package:prm_project/features/auth/auth_feature.dart';
import 'package:public_openapi/public_openapi.dart';
import 'package:prm_project/shared/widgets/modal/otp_verification_dialog.widget.dart';
import 'package:prm_project/core/utils/validator_utils.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => sl<RegisterCubit>(),
      child: const _RegisterView(),
    );
  }
}

class _RegisterView extends StatefulWidget {
  const _RegisterView();

  @override
  State<_RegisterView> createState() => _RegisterViewState();
}

class _RegisterViewState extends State<_RegisterView> {
  final _formKey = GlobalKey<FormState>();

  final _firstNameController = TextEditingController();
  final _lastNameController = TextEditingController();
  final _phoneController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();

  String? _serverEmailError;
  DateTime? _birthDate;

  String _gender = "male";
  bool _isAgree = false;

  @override
  void initState() {
    super.initState();
    _emailController.addListener(() {
      if (_serverEmailError != null) {
        setState(() {
          _serverEmailError = null;
        });
      }
    });
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

  void _handleRegister() {
    if (!_formKey.currentState!.validate()) return;
    if (!_isAgree) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("Bạn cần đồng ý điều khoản")),
      );
      return;
    }

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

    context.read<RegisterCubit>().register(command);
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

  void _showSuccessModal() {
    final parentContext = context;
    showDialog(
      context: parentContext,
      barrierDismissible: false,
      builder: (BuildContext dialogContext) {
        bool _isModalLoading = false;
        return StatefulBuilder(
          builder: (context, setModalState) {
            return Dialog(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              child: Padding(
                padding: const EdgeInsets.all(24.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: Colors.green.withOpacity(0.1),
                        shape: BoxShape.circle,
                      ),
                      child: const Icon(
                        Icons.check,
                        color: Colors.green,
                        size: 40,
                      ),
                    ),
                    const SizedBox(height: 24),
                    const Text(
                      "Tạo tài khoản thành công",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 16),
                    const Text(
                      "Quyền truy cập sẽ bị giới hạn cho đến khi bạn xác minh tài khoản.",
                      style: TextStyle(fontSize: 14, color: Colors.grey),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 24),

                    /// 👉 Nút quay về login
                    SizedBox(
                      width: double.infinity,
                      child: OutlinedButton(
                        onPressed: _isModalLoading
                            ? null
                            : () {
                                Navigator.pop(dialogContext); // đóng modal
                                Navigator.pop(parentContext); // về login
                              },
                        style: OutlinedButton.styleFrom(
                          side: const BorderSide(color: AppColors.primary),
                          padding: const EdgeInsets.symmetric(vertical: 12),
                        ),
                        child: const Text(
                          "Tiếp tục đăng nhập",
                          style: TextStyle(color: AppColors.primary),
                        ),
                      ),
                    ),

                    const SizedBox(height: 12),

                    /// 👉 Nút xác minh OTP
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: _isModalLoading
                            ? null
                            : () async {
                                final email = _emailController.text;

                                setModalState(() => _isModalLoading = true);

                                try {
                                  final isSent = await parentContext
                                      .read<RegisterCubit>()
                                      .generateOtp(email);

                                  if (!dialogContext.mounted) return;

                                  setModalState(() => _isModalLoading = false);

                                  if (isSent) {
                                    Navigator.pop(
                                      dialogContext,
                                    ); // đóng modal success

                                    showDialog(
                                      context: parentContext,
                                      barrierDismissible: false,
                                      builder: (BuildContext otpContext) {
                                        return OtpVerificationDialog(
                                          email: email,
                                          onVerify: (String otpCode) async {
                                            try {
                                              final isVerified =
                                                  await parentContext
                                                      .read<RegisterCubit>()
                                                      .verifyAccount(
                                                        email,
                                                        otpCode,
                                                      );

                                              if (isVerified &&
                                                  otpContext.mounted &&
                                                  parentContext.mounted) {
                                                Navigator.pop(
                                                  otpContext,
                                                ); // đóng OTP dialog
                                                Navigator.pop(
                                                  parentContext,
                                                ); // về login

                                                ScaffoldMessenger.of(
                                                  parentContext,
                                                ).showSnackBar(
                                                  const SnackBar(
                                                    content: Text(
                                                      "Xác minh thành công! Vui lòng đăng nhập.",
                                                    ),
                                                    backgroundColor:
                                                        Colors.green,
                                                  ),
                                                );
                                              } else if (!isVerified &&
                                                  otpContext.mounted) {
                                                ScaffoldMessenger.of(
                                                  otpContext,
                                                ).showSnackBar(
                                                  const SnackBar(
                                                    content: Text(
                                                      "Mã xác thực không đúng",
                                                    ),
                                                  ),
                                                );
                                              }
                                            } catch (e) {
                                              if (otpContext.mounted) {
                                                ScaffoldMessenger.of(
                                                  otpContext,
                                                ).showSnackBar(
                                                  const SnackBar(
                                                    content: Text(
                                                      "Có lỗi xảy ra khi xác minh",
                                                    ),
                                                  ),
                                                );
                                              }
                                            }
                                          },
                                        );
                                      },
                                    );
                                  } else {
                                    if (dialogContext.mounted) {
                                      ScaffoldMessenger.of(
                                        dialogContext,
                                      ).showSnackBar(
                                        const SnackBar(
                                          content: Text(
                                            "Không thể gửi mã OTP. Vui lòng thử lại sau.",
                                          ),
                                        ),
                                      );
                                    }
                                  }
                                } catch (e) {
                                  setModalState(() => _isModalLoading = false);
                                  if (dialogContext.mounted) {
                                    ScaffoldMessenger.of(
                                      dialogContext,
                                    ).showSnackBar(
                                      SnackBar(
                                        content: Text("Lỗi: ${e.toString()}"),
                                      ),
                                    );
                                  }
                                }
                              },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: AppColors.primary,
                          padding: const EdgeInsets.symmetric(vertical: 12),
                        ),
                        child: _isModalLoading
                            ? const SizedBox(
                                height: 20,
                                width: 20,
                                child: CircularProgressIndicator(
                                  color: Colors.white,
                                  strokeWidth: 2,
                                ),
                              )
                            : const Text(
                                "Xác minh tài khoản ngay",
                                style: TextStyle(color: Colors.white),
                              ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<RegisterCubit, RegisterState>(
      listener: (context, state) {
        if (state is RegisterSuccess) {
          _showSuccessModal();
        } else if (state is RegisterError) {
          if (state.isDuplicateEmail) {
            setState(() {
              _serverEmailError = state.message;
            });
            _formKey.currentState!.validate();
          } else {
            ScaffoldMessenger.of(
              context,
            ).showSnackBar(SnackBar(content: Text(state.message)));
          }
        }
      },
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 32),
            child: Form(
              key: _formKey,
              autovalidateMode: AutovalidateMode.onUserInteraction,
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
                    showClear: true,
                    validator: (value) {
                      if (value == null || value.trim().isEmpty)
                        return "Họ không được để trống";
                      return null;
                    },
                  ),

                  const SizedBox(height: 16),

                  /// TÊN
                  AppTextInputWidget(
                    label: "Tên",
                    hint: "Nhập tên của bạn...",
                    controller: _lastNameController,
                    isRequired: true,
                    showClear: true,
                    validator: (value) {
                      if (value == null || value.trim().isEmpty)
                        return "Tên không được để trống";
                      return null;
                    },
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
                    isRequired: true,
                    showClear: true,
                    validator: (value) {
                      if (value == null || value.isEmpty)
                        return 'Số điện thoại không được bỏ trống!';
                      if (!ValidatorUtils.isValidPhone(value)) {
                        return 'Số điện thoại phải bắt đầu bằng số 0 và có 10 chữ số!';
                      }
                      return null;
                    },
                  ),

                  const SizedBox(height: 16),

                  /// EMAIL
                  AppTextInputWidget(
                    label: "Email",
                    hint: "Nhập email...",
                    controller: _emailController,
                    keyboardType: TextInputType.emailAddress,
                    isRequired: true,
                    showClear: true,

                    validator: (value) {
                      // 1. Kiểm tra trống
                      if (value == null || value.isEmpty) {
                        return 'Email không được bỏ trống!';
                      }

                      // 2. Kiểm tra định dạng (Regex)
                      if (!ValidatorUtils.isValidEmail(value)) {
                        return 'Vui lòng nhập email hợp lệ!';
                      }

                      // 3. Hiển thị lỗi từ Server (Email đã tồn tại)

                      return _serverEmailError;
                    },
                  ),

                  const SizedBox(height: 16),

                  /// PASSWORD
                  AppPasswordInputWidget(
                    label: "Mật khẩu",
                    hint: "Tạo mật khẩu...",
                    controller: _passwordController,
                    isRequired: true,
                    validator: (value) {
                      if (value == null || value.isEmpty)
                        return 'Mật khẩu không được bỏ trống!';
                      if (!ValidatorUtils.isValidPassword(value)) {
                        return 'Mật khẩu cần ít nhất 6 ký tự, gồm chữ hoa, chữ thường và ký tự đặc biệt!';
                      }
                      return null;
                    },
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

                  const SizedBox(height: 20),

                  /// REGISTER BUTTON
                  BlocBuilder<RegisterCubit, RegisterState>(
                    builder: (context, state) {
                      return SizedBox(
                        width: double.infinity,
                        child: AppButtonWidget(
                          text: "Tạo tài khoản",
                          isLoading: state is RegisterLoading,
                          onPressed: _handleRegister,
                        ),
                      );
                    },
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
      ),
    );
  }
}
