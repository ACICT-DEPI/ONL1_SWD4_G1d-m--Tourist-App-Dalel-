import 'package:dalel/core/functions/custom_toast.dart';
import 'package:dalel/core/functions/navigate_push.dart';
import 'package:dalel/core/uitils/app_colors.dart';
import 'package:dalel/core/uitils/app_strings.dart';
import 'package:dalel/features/auth_cubit/cubit/auth_cubit.dart';
import 'package:dalel/features/auth_cubit/cubit/auth_state.dart';
import 'package:dalel/features/author/presentation/widgets/custom_text_field.dart';
import 'package:dalel/features/author/presentation/widgets/forgot_password_text_widget.dart';
import 'package:dalel/features/on%20boaring/presentarion/widgets/custom_buttom.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomSignInForm extends StatelessWidget {
  const CustomSignInForm({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthCubit, AuthState>(
      listener: (context, state) {
        if (state is SignInSuccessState) {
          FirebaseAuth.instance.currentUser!.emailVerified
              ? pushReplacementNavigate(context, "/home")
              : showToast('Please Verify Your Account');
        } else if (state is SignInFailureState) {
          showToast(state.errMessage);
        }
      },
      builder: (context, state) {
        AuthCubit authCubit = BlocProvider.of<AuthCubit>(context);
        return Form(
          key: authCubit.signInFormKey,
          child: Column(
            children: [
              CustomTextFormField(
                text: AppStrings.emailAddress,
                onChanged: (emailAddress) {
                  authCubit.emailAddress = emailAddress;
                },
              ),
              CustomTextFormField(
                text: AppStrings.password,
                suffixIcon: IconButton(
                  icon: Icon(
                    authCubit.scurePasswordTextValue == true
                        ? Icons.visibility_outlined
                        : Icons.visibility_off_outlined,
                  ),
                  onPressed: () {
                    authCubit.scurePasswordText();
                  },
                ),
                scureText: authCubit.scurePasswordTextValue,
                onChanged: (password) {
                  authCubit.password = password;
                },
              ),
              const ForgotPasswordTextWidget(),
              const SizedBox(
                height: 50,
              ),
              state is SignInLoadingState
                  ? CircularProgressIndicator(
                      color: AppColors.primaryColor,
                    )
                  : CustomButton(
                      onPressed: () async {
                        if (authCubit.signInFormKey.currentState!.validate()) {
                          await authCubit.signInWithEmailAndPassword();
                        }
                      },
                      buttonString: AppStrings.signIn,
                    ),
            ],
          ),
        );
      },
    );
  }
}
