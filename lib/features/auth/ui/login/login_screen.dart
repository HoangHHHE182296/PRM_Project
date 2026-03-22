import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:prm_project/core/di/injection.dart';
import 'package:prm_project/features/auth/auth_feature.dart';
import 'package:prm_project/features/auth/logic/login_cubit.dart';
import 'package:prm_project/shared/widgets/buttons/app_button.widget.dart';
import 'package:prm_project/core/utils/validator_utils.dart';
import 'package:prm_project/shared/theme/app_colors.dart';
import 'package:prm_project/shared/widgets/fields/app_password_input.widget.dart';
import 'package:prm_project/shared/widgets/fields/app_text_input.widget.dart';
import 'package:go_router/go_router.dart';
import 'package:prm_project/core/constants/router_constant.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Bọc BlocProvider ở ngoài cùng để quản lý State
    return BlocProvider(
      create: (_) => sl<LoginCubit>(),
      child: const _LoginView(),
    );
  }
}

class _LoginView extends StatefulWidget {
  const _LoginView();

  @override
  State<_LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<_LoginView> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  bool _isRemember = false;

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginCubit, LoginState>(
      listener: (context, state) {
        if (state is LoginSuccess) {
          context.go(RouterConst.home.router);
        }

        if (state is LoginError) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(state.message),
              backgroundColor: AppColors.error,
            ),
          );
        }
      },
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Center(
            child: SingleChildScrollView(
              padding: const EdgeInsets.symmetric(
                horizontal: 24.0,
                vertical: 32.0,
              ),
              child: Form(
                key: _formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    // Logo Placeholder (Text with rich styling)
                    RichText(
                      text: const TextSpan(
                        text: 'Sesame',
                        style: TextStyle(
                          color: AppColors.error,
                          fontSize: 32,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.bold,
                        ),
                        children: [
                          TextSpan(
                            text: 'Box',
                            style: TextStyle(color: AppColors.primary),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 32),

                    // Headlines
                    const Text(
                      'Đánh thức Nghệ thuật',
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: AppColors.textDark,
                        height: 1.2,
                      ),
                    ),
                    const Text(
                      'Tặng quà Tinh tế',
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: AppColors.primary,
                        height: 1.2,
                      ),
                    ),
                    const SizedBox(height: 16),

                    // Subtitle
                    const Text(
                      'Đăng nhập để kiến tạo những khoảnh khắc khó quên cho những người quan trọng nhất.',
                      style: TextStyle(
                        fontSize: 15,
                        color: AppColors.textLight,
                        height: 1.5,
                      ),
                    ),
                    const SizedBox(height: 32),

                    // Form Fields
                    AppTextInputWidget(
                      label: 'Email',
                      hint: 'Nhập email...',
                      prefixIcon: Icons.email_outlined,
                      controller: _emailController,
                      keyboardType: TextInputType.emailAddress,
                      isRequired: true,
                      showClear: true,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Email không được bỏ trống!';
                        }
                        if (!ValidatorUtils.isValidEmail(value)) {
                          return 'Vui lòng nhập email hợp lệ!';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 16),

                    AppPasswordInputWidget(
                      label: 'Mật khẩu',
                      hint: 'Nhập mật khẩu...',
                      prefixIcon: Icons.key_outlined,
                      controller: _passwordController,
                      isRequired: true,
                      showClear: true,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Mật khẩu không được bỏ trống!';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 8),

                    // Remember Me & Forgot Password
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Flexible(
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              SizedBox(
                                width: 24,
                                height: 24,
                                child: Checkbox(
                                  value: _isRemember,
                                  onChanged: (value) {
                                    setState(() {
                                      _isRemember = value ?? false;
                                    });
                                  },
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(4),
                                  ),
                                  side: const BorderSide(
                                    color: AppColors.border,
                                  ),
                                  activeColor: AppColors.primary,
                                ),
                              ),
                              const SizedBox(width: 8),
                              Flexible(
                                child: GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      _isRemember = !_isRemember;
                                    });
                                  },
                                  child: const Text(
                                    'Ghi nhớ đăng nhập',
                                    style: TextStyle(
                                      fontSize: 13,
                                      color: AppColors.textDark,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(width: 8),
                        Flexible(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              const Text(
                                'Quên mật khẩu?',
                                style: TextStyle(
                                  fontSize: 13,
                                  color: AppColors.textDark,
                                ),
                              ),
                              const SizedBox(height: 4),
                              TextButton(
                                onPressed: () {},
                                style: TextButton.styleFrom(
                                  padding: EdgeInsets.zero,
                                  minimumSize: Size.zero,
                                  tapTargetSize:
                                      MaterialTapTargetSize.shrinkWrap,
                                ),
                                child: const Text(
                                  'Đặt lại mật khẩu',
                                  style: TextStyle(
                                    fontSize: 13,
                                    color: AppColors.primary,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 16),

                    BlocBuilder<LoginCubit, LoginState>(
                      builder: (context, state) {
                        return AppButtonWidget(
                          text: 'Đăng Nhập',
                          isLoading: state is LoginLoading,
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {
                              context.read<LoginCubit>().login(
                                _emailController.text,
                                _passwordController.text,
                                _isRemember,
                              );
                            }
                          },
                        );
                      },
                    ),

                    const SizedBox(height: 20),

                    // Divider
                    Row(
                      children: [
                        const Expanded(child: Divider(color: AppColors.border)),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          child: Text(
                            'HOẶC ĐĂNG NHẬP VỚI',
                            style: TextStyle(
                              fontSize: 12,
                              color: AppColors.textLight.withValues(alpha: 0.8),
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        const Expanded(child: Divider(color: AppColors.border)),
                      ],
                    ),

                    const SizedBox(height: 20),

                    // Social Login
                    AppButtonWidget(
                      text: 'Tiếp tục sử dụng dịch vụ bằng Google',
                      mode: ButtonMode.outline,
                      type: ButtonType.primary,
                      isFullWidth: true,
                      customPrefix: _buildGoogleIcon(),
                      onPressed: () {},
                    ),

                    const SizedBox(height: 32),

                    // Sign Up Link
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'Chưa có tài khoản? ',
                          style: TextStyle(
                            color: AppColors.textDark,
                            fontSize: 15,
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            context.push(RouterConst.register.router);
                          },
                          style: TextButton.styleFrom(
                            padding: EdgeInsets.zero,
                            minimumSize: Size.zero,
                            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                          ),
                          child: const Text(
                            'Đăng ký ngay',
                            style: TextStyle(
                              color: AppColors.primary,
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildGoogleIcon() {
    return Container(
      padding: const EdgeInsets.all(2),
      decoration: const BoxDecoration(
        color: Colors.transparent,
        shape: BoxShape.circle,
      ),
      child: Image.network(
        'https://lh3.googleusercontent.com/COxitqgJr1sJnIDe8-jiKhxDx1FrYbtRHKJ9z_hELisAlapwE9LUPh6fcXIfb5vwpbMl4xl9H9TRFPc5NOO8Sb3VSgIBrfRYvW6cUA',
        height: 20,
        width: 20,
      ),
    );
  }
}
