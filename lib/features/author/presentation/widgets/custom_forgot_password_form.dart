import 'package:dalel/core/functions/custom_toast.dart';
import 'package:dalel/core/functions/navigate_push.dart';
import 'package:dalel/core/uitils/app_colors.dart';
import 'package:dalel/core/uitils/app_strings.dart';
import 'package:dalel/features/auth_cubit/cubit/auth_cubit.dart';
import 'package:dalel/features/auth_cubit/cubit/auth_state.dart';
import 'package:dalel/features/author/presentation/widgets/custom_text_field.dart';
import 'package:dalel/features/on%20boaring/presentarion/widgets/custom_buttom.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomForgotPasswordForm extends StatelessWidget {
  const CustomForgotPasswordForm({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthCubit, AuthState>(
      listener: (context, state) {
        if (state is ResetPasswordSuccessState) {
          showToast("Check Your Email To Reset Your Password!");
          pushReplacementNavigate(context, "/SignInScreen");
        } else if (state is ResetPasswordFailureState) {
          showToast(state.errMessage);
        }
      },
      builder: (context, state) {
        AuthCubit authCubit = BlocProvider.of<AuthCubit>(context);
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Form(
            key: authCubit.forgotPasswordFormKey,
            child: Column(
              children: [
                CustomTextFormField(
                  text: AppStrings.emailAddress,
                  onChanged: (emailAddress) {
                    authCubit.emailAddress = emailAddress;
                  },
                ),
                const SizedBox(
                  height: 50,
                ),
                state is ResetPasswordLoadingState
                    ? CircularProgressIndicator(
                        color: AppColors.primaryColor,
                      )
                    : CustomButton(
                        onPressed: ()async {
                          if (authCubit.forgotPasswordFormKey.currentState!
                              .validate()) {
                            await authCubit.resetPasswordWithLink();
                          }
                        },
                        buttonString: AppStrings.sendResetPasswordLink,
                      ),
              ],
            ),
          ),
        );
      },
    );
  }
}
