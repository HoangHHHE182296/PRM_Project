import 'dart:async';
import 'package:flutter/material.dart';
import 'package:prm_project/shared/theme/app_colors.dart';
import 'package:prm_project/shared/widgets/buttons/app_button.widget.dart';

class OtpVerificationDialog extends StatefulWidget {
  final String email;
  // SỬA: Thay đổi kiểu dữ liệu để nhận mã OTP truyền ra ngoài
  final Function(String otpCode) onVerify;

  const OtpVerificationDialog({
    super.key,
    required this.email,
    required this.onVerify,
  });

  @override
  State<OtpVerificationDialog> createState() => _OtpVerificationDialogState();
}

class _OtpVerificationDialogState extends State<OtpVerificationDialog> {
  final List<TextEditingController> _controllers = List.generate(
    6,
    (index) => TextEditingController(),
  );
  final List<FocusNode> _focusNodes = List.generate(6, (index) => FocusNode());

  int _remainingTime = 899;
  int _resendCodeTime = 59;
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    _startTimer();
  }

  void _startTimer() {
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (!mounted) return; // Bảo vệ setState khi widget đã bị dispose
      setState(() {
        if (_remainingTime > 0) _remainingTime--;
        if (_resendCodeTime > 0) _resendCodeTime--;
      });
    });
  }

  // Hàm xử lý khi nhấn nút xác nhận
  void _handleVerifyPress() {
    // Nối nội dung từ 6 ô nhập liệu thành 1 chuỗi
    String otpCode = _controllers.map((e) => e.text).join();
    
    if (otpCode.length < 6) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("Vui lòng nhập đủ 6 chữ số")),
      );
      return;
    }
    
    // Gọi callback truyền chuỗi OTP ra RegisterScreen
    widget.onVerify(otpCode);
  }

  String _maskEmail(String email) {
    final parts = email.split('@');
    if (parts.length != 2) return email;
    final username = parts[0];
    final domain = parts[1];
    if (username.length <= 3) return "***@$domain";
    return "${username.substring(0, 3)}***@$domain";
  }

  String _formatTime(int seconds) {
    int minutes = seconds ~/ 60;
    int remainingSeconds = seconds % 60;
    return "$minutes:${remainingSeconds.toString().padLeft(2, '0')}";
  }

  @override
  void dispose() {
    _timer?.cancel();
    for (var controller in _controllers) {
      controller.dispose();
    }
    for (var node in _focusNodes) {
      node.dispose();
    }
    super.dispose();
  }

  Widget _buildOtpField(int index) {
    return SizedBox(
      width: 40, // Giảm nhẹ width để vừa với màn hình nhỏ
      child: TextField(
        controller: _controllers[index],
        focusNode: _focusNodes[index],
        textAlign: TextAlign.center,
        keyboardType: TextInputType.number,
        maxLength: 1,
        style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        decoration: InputDecoration(
          counterText: "",
          contentPadding: const EdgeInsets.symmetric(vertical: 8),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: AppColors.primary, width: 2),
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        onChanged: (value) {
          if (value.isNotEmpty && index < 5) {
            _focusNodes[index + 1].requestFocus();
          }
          // Tự động quay lại ô trước nếu xóa
          if (value.isEmpty && index > 0) {
            _focusNodes[index - 1].requestFocus();
          }
        },
      ),
    );
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
              icon: const Icon(Icons.close),
              onPressed: () => Navigator.pop(context),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 32),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                CircleAvatar(
                  backgroundColor: AppColors.primary.withOpacity(0.1),
                  child: const Icon(Icons.shield_outlined, color: AppColors.primary),
                ),
                const SizedBox(height: 24),
                const Text(
                  "Xác minh tài khoản của bạn",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 8),
                Text(
                  "Vui lòng nhập mã xác minh 6 chữ số đã được gửi đến ${_maskEmail(widget.email)}",
                  textAlign: TextAlign.center,
                  style: const TextStyle(color: Colors.grey, fontSize: 13),
                ),
                const SizedBox(height: 24),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: List.generate(6, (index) => _buildOtpField(index)),
                ),
                const SizedBox(height: 24),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Thời gian còn lại: ${_formatTime(_remainingTime)}",
                      style: const TextStyle(color: AppColors.primary, fontSize: 12),
                    ),
                    TextButton(
                      onPressed: _resendCodeTime == 0
                          ? () {
                              setState(() {
                                _resendCodeTime = 59;
                                // Thêm logic gọi API gửi lại mã tại đây
                              });
                            }
                          : null,
                      child: Text(
                        "Gửi lại mã ${_resendCodeTime > 0 ? '($_resendCodeTime s)' : ''}",
                        style: TextStyle(
                          color: _resendCodeTime == 0 ? AppColors.primary : Colors.grey,
                          fontSize: 12,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 24),
                AppButtonWidget(
                  text: "Xác minh tài khoản",
                  // SỬA: Gọi hàm local để xử lý lấy text từ các ô input
                  onPressed: _handleVerifyPress,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}