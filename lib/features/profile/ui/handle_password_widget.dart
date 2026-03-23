import 'package:flutter/material.dart';
import 'package:prm_project/shared/theme/app_colors.dart';
import 'package:prm_project/shared/widgets/buttons/app_button.widget.dart';
import 'package:prm_project/shared/widgets/fields/app_password_input.widget.dart';
import 'package:prm_project/core/utils/validator_utils.dart';

class HandlePasswordWidget extends StatefulWidget {
  final bool isSetPassword;
  final Future<bool> Function(String? currentPassword, String newPassword) onSave;

  const HandlePasswordWidget({
    super.key,
    required this.isSetPassword,
    required this.onSave,
  });

  @override
  State<HandlePasswordWidget> createState() => _HandlePasswordWidgetState();
}

class _HandlePasswordWidgetState extends State<HandlePasswordWidget> {
  final _formKey = GlobalKey<FormState>();
  final _currentPasswordController = TextEditingController();
  final _newPasswordController = TextEditingController();
  final _confirmController = TextEditingController();
  bool _isLoading = false;

  @override
  void dispose() {
    _currentPasswordController.dispose();
    _newPasswordController.dispose();
    _confirmController.dispose();
    super.dispose();
  }

  void _handleSave() async {
    if (!_formKey.currentState!.validate()) return;

    setState(() => _isLoading = true);
    final success = await widget.onSave(
      widget.isSetPassword ? null : _currentPasswordController.text,
      _newPasswordController.text,
    );
    if (!mounted) return;
    setState(() => _isLoading = false);

    if (success) {
      Navigator.pop(context);
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(widget.isSetPassword ? 'Đặt mật khẩu thành công!' : 'Đổi mật khẩu thành công!')),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(widget.isSetPassword ? 'Có lỗi xảy ra, vui lòng thử lại!' : 'Mật khẩu hiện tại không đúng hoặc có lỗi xảy ra!')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Stack(
        children: [
          Positioned(
            right: 8,
            top: 8,
            child: IconButton(
              icon: const Icon(Icons.close, color: AppColors.error),
              onPressed: () => Navigator.pop(context),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(24.0),
            child: Form(
              key: _formKey,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: widget.isSetPassword ? const Color(0xFFF3E8FF) : const Color(0xFFE0F2FE),
                          shape: BoxShape.circle,
                        ),
                        child: Icon(
                          widget.isSetPassword ? Icons.key_outlined : Icons.lock_reset, 
                          color: widget.isSetPassword ? const Color(0xFF9333EA) : const Color(0xFF0284C7)
                        ),
                      ),
                      const SizedBox(width: 12),
                      Text(
                        widget.isSetPassword ? "Đặt mật khẩu" : "Đổi mật khẩu",
                        style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  Text(
                    widget.isSetPassword
                        ? "Vì bạn đã đăng nhập bằng Google, bạn có thể đặt mật khẩu để đăng nhập bằng email vào lần sau."
                        : "Vui lòng nhập mật khẩu hiện tại và mật khẩu mới để thay đổi.",
                    style: const TextStyle(color: Colors.grey, fontSize: 13, height: 1.5),
                  ),
                  const SizedBox(height: 24),
                  if (!widget.isSetPassword) ...[
                    AppPasswordInputWidget(
                      label: "Mật khẩu hiện tại",
                      hint: "Nhập mật khẩu hiện tại...",
                      controller: _currentPasswordController,
                      isRequired: true,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Vui lòng nhập mật khẩu hiện tại";
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 16),
                  ],
                  AppPasswordInputWidget(
                    label: "Mật khẩu mới",
                    hint: "Nhập mật khẩu mới...",
                    controller: _newPasswordController,
                    isRequired: true,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Mật khẩu mới không được để trống";
                      }
                      if (!ValidatorUtils.isValidPassword(value)) {
                        return "Mật khẩu cần ít nhất 6 ký tự, gồm chữ hoa, chữ thường và chữ số";
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 16),
                  AppPasswordInputWidget(
                    label: "Xác nhận mật khẩu mới",
                    hint: "Xác nhận mật khẩu mới...",
                    controller: _confirmController,
                    isRequired: true,
                    validator: (value) {
                      if (value != _newPasswordController.text) {
                        return "Mật khẩu xác nhận không khớp";
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 32),
                  SizedBox(
                    width: double.infinity,
                    child: AppButtonWidget(
                      text: widget.isSetPassword ? "Lưu mật khẩu" : "Thay đổi mật khẩu",
                      isLoading: _isLoading,
                      onPressed: _handleSave,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
